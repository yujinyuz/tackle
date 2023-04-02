function pm --description "Find and execute manage.py"
    # Use `command -v` to find the full path of the `python` command
    set -l python_cmd (command -v python)

    # Use `find`'s `-quit` option in a separate argument
    set -l manage_path (command find . -type f -name "manage.py" -print -quit)

    # Check if manage.py exists
    if test -z "$manage_path"
        echo "No manage.py found."
        return 1
    end

    # Get available Django management commands using `manage.py`
    # set commands ($python_cmd $manage_path shell -c "import sys; from django.core.management import execute_from_command_line; execute_from_command_line(['', 'help']); print('\n'.join(sys.argv[2:]))" 2>/dev/null)

    # Run `manage.py` with provided arguments
    $python_cmd $manage_path $argv
end
