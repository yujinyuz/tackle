function DS_cleaner --description "Cleanup .DS_Store files"
    set confirm (read -P "Are you sure you want to delete all .DS_Store files? [y/n] ")
    if test "$confirm" = y
        find . -type f -name '.DS_Store' -depth -exec rm -f {} \;
        echo ".DS_Store files deleted."
    else
        echo "Operation cancelled."
    end
end
