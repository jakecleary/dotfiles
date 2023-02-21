function gcp --wraps='git commit -p' --description 'alias gcp=git commit -p'
  git commit -p $argv; 
end
