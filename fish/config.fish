if status is-interactive

end

set -lx SHELL $__fish_bin_dir/fish
eval (keychain --eval --quiet ~/.ssh/Aleph-ssh)
alias vim "neovide"
alias cz "npx git-cz -S --disable-emoji"

function vim 
  neovide
  exit
end

function fish_greeting
  figlet -f slant "3301"
end

rbenv init - | source
set -x --path PATH $HOME/.rbenv/bin $PATH
set -x --path PATH /usr/bin $PATH

funcsave vim
