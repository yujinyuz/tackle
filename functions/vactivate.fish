function vactivate --argument-names 'venv_name' --description 'Create virtualenv named the same as current directory'
  source $HOME/.virtualenvs/$venv_name/bin/activate.fish
end
