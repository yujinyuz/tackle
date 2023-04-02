function pycleanup --description "Cleanup python byte-code and cache"
    # NOTE: The -o in find stands for -or while -a stands for -and
    set -l deleted_files (command find . -type f -name '*.py[co]' -delete -print -o -type d -name '__pycache__' -delete -print)
    if test -n "$deleted_files"
        echo "Deleted files:"
        echo "$deleted_files"
    else
        echo "No files deleted."
    end
end
