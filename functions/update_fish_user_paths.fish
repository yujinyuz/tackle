function update_fish_user_paths --description "Updates `fish_user_paths` by unsetting variables"
    set -e FIRST_RUN
    set -e fish_user_paths
    echo "Restarting shell..."
    exec $SHELL
end
