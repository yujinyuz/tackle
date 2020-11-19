# https://fishshell.com/docs/current/cmds/function.html#cmd-function
function __auto_venv --on-event fish_prompt --description "Automatically activate python venv"
  set -l venv_name (basename $PWD | tr . -)

  if test -d $HOME/.virtualenvs/$venv_name
    source $HOME/.virtualenvs/$venv_name/bin/activate.fish
  end
end
