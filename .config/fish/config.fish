if status is-interactive
    # Commands to run in interactive sessions can go here
    ~/.local/bin/mise activate fish | source
else
    ~/.local/bin/mise activate fish --shims | source
end

/opt/homebrew/bin/brew shellenv | source
fzf --fish | source
zoxide init fish | source

fish_add_path $HOME/.cargo/bin

set -x KERL_CONFIGURE_OPTIONS --without-javac
set -x LANG en_US.UTF-8

alias ls='lsd'
alias cat='bat --plain'
