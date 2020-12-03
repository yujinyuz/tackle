function venv --description 'Create virtualenv named the same as current directory' --argument-names python_version name
  set -l python_bin
  set -l venv_name
  set -l venv_dir $HOME/.local/share/virtualenvs

  if not test -n "$python_version"
    # Use default python version set by asdf
    set python_bin ($HOME/.asdf/bin/asdf which python)
  else
    set python_bin $ASDF_DIR/installs/python/$python_version/bin/python
  end

  if not test -n "$name"
    set venv_name (basename $PWD | tr . -)
  else
    set venv_name $name
  end

  if not test -e $python_bin
    echo "Python version `$python_version` is not installed."
    return 1
  end

  echo Creating virtualenv $venv_name ...
  $python_bin -m venv $venv_dir/$venv_name
  source $venv_dir/$venv_name/bin/activate.fish
end
