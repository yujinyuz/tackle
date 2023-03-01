function scratch --description 'Create temp dir'
    set -l tmpdir (mktemp -d)
    set -l cwd $PWD
    echo " $tmpdir"
    cd "$tmpdir"
    fish
    echo "removing scratch dir: $tmpdir"
    rm -fr "$tmpdir"
    cd "$cwd"
end
