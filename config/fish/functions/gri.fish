function gri --wraps='git rebase -i origin/main' --description 'alias gri=git rebase -i origin/main'
  git rebase -i origin/main $argv; 
end
