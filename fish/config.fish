if status is-interactive

end


set -lx SHELL $__fish_bin_dir/fish
set -lx BROWSER /usr/bin/google-chrome-stable
set -lx EDITOR /usr/bin/nvim

eval (keychain --eval --quiet ~/.ssh/Aleph-ssh)
alias cz "npx git-cz -S --disable-emoji"
alias vit "taskwarrior-tui"
alias emacs "emacsclient -c -a 'emacs'"

function vim 
  neovide 
  exit
end

function fish_greeting
  ascii-image-converter ~/navi.jpg -C -d 22,12
end

set -Ux fish_user_paths $HOME/.anyenv/bin $fish_user_paths
set -x --path PATH $HOME/.emacs.d/bin $PATH
set -x --path PATH $HOME/.rbenv/bin $PATH
set -x --path PATH $HOME/.cargo/bin $PATH
set -x --path PATH /usr/bin $PATH

status --is-interactive; and source (anyenv init -|psub)

funcsave vim
clear
