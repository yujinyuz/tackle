# https://til.hashrocket.com/posts/e4c8c665a8-find-and-kill-all-processes-listening-on-a-port
function killport --description "Kill process(es) with the given port"

    if test -z "$argv"
        echo "Please provide a port number as an argument"
        return 1
    end


    set port $argv[1]
    set pids (lsof -i tcp:$port -t)


    if test -z "$pids"
        echo "No program is running on port $port"
        return 1
    end


    echo "Program(s) running on port $port:"
    for pid in $pids
        ps -p $pid -o comm=
        echo "Do you want to kill this program? (y/n)"
        read -P "> " confirmation

        if test "$confirmation" = y
            kill -9 $pid
            echo "Successfully killed program"
        end
    end

    return 0
end
