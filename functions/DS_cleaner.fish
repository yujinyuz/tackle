function DS_cleaner --description "Cleanup python byte-code and cache"
    find . -type f -name '.DS_Store' -delete
end
