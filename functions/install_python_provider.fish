function install_python_provider --description "Automatically create a virtualenv `nvim` to be used for neovim"
  set -l NVIM_DIR $PYENV_ROOT/versions/nvim
  if not test -d $NVIM_DIR
    # Make sure we are not using system version of python
    if test (pyenv global) = "system"
      echo "Please set another python version e.g. `pyenv global 3.x.x`"
    else
      # Create virtualenv and install python packages for neovim
      echo "===> Creating virtualenv `nvim`"
      pyenv virtualenv -f nvim
      echo "===> Installing packages"
      $NVIM_DIR/bin/pip install pynvim isort jedi
    end
  end
end
