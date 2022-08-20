if status is-interactive

end

set -lx SHELL $__fish_bin_dir/fish
set -lx BROWSER /usr/bin/google-chrome-stable
set -lx QT_IM_MODULE fcitx
set -lx XMODIFIERS @im=fcitx
set -lx GTK_IM_MODULE fcitx


eval (keychain --eval --quiet ~/.ssh/Aleph-ssh)
alias cz "npx git-cz -S --disable-emoji"
alias vit "taskwarrior-tui"
alias emacs "emacsclient -c -a 'emacs'"

function vim 
  neovide --multigrid
  exit
end

function fish_greeting
  figlet -f slant "3301"
end

anyenv init
rbenv init - | source
set -x --path PATH $HOME/.rbenv/bin $PATH
set -x --path PATH $HOME/.emacs.d/bin $PATH
set -x --path PATH $HOME/.cargo/bin $PATH
set -x --path PATH /usr/bin $PATH

funcsave vim
clear
