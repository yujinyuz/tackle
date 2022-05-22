function fupath
  echo $fish_user_paths | tr -s ' ' '\n' $argv;
end
