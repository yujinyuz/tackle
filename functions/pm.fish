function pm --description "Find and execute manage.py"
    # -quit to exit after first match
    command find . -type f -name "manage.py" -exec python {} $argv \; -quit
end
