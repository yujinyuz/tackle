# https://fishshell.com/docs/current/cmds/function.html#cmd-function
function __auto_venv --on-event fish_prompt --description "Automatically activate python venv"
  set -l venv_name (basename $PWD | tr . -)
  set -l venv_dir $HOME/.local/share/virtualenvs

  if test -d $venv_dir/$venv_name
      source $venv_dir/$venv_name/bin/activate.fish
  end
end
