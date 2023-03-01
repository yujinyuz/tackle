function __vf_callback --on-event virtualenv_did_activate
    # set -l venv_name (basename $VIRTUAL_ENV)
    if test -e "$PWD/exports.fish"
        source $PWD/exports.fish
    end
end
