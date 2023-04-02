# https://til.hashrocket.com/posts/e4c8c665a8-find-and-kill-all-processes-listening-on-a-port
function killport --description "Kill process(es) with the given port"
    set -l PIDS (lsof -ti tcp:$argv)

    if test -n "$PIDS"
        set -l PNAMES (ps $PIDS -o comm=)
        kill $PIDS
        echo "Successfully killed $PNAMES on port $argv"
    end

end
