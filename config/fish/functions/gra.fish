function gra --wraps='git rebase --abort' --description 'alias gra=git rebase --abort'
  git rebase --abort $argv; 
end
