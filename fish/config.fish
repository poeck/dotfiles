set fish_greeting

alias vi=nvim
alias vim=nvim
alias svim=sudoedit

set -Ux EDITOR nvim 

bind \cw backward-kill-word

if status --is-interactive;
    [ -e $HOME/.config/fish/conf.d/alias.fish ]; and source $HOME/.config/fish/conf.d/alias.fish
end
