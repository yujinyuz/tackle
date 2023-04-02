function DS_cleaner --description "Cleanup .DS_Store files"
    find . -type f -name '.DS_Store' -delete -print
end
