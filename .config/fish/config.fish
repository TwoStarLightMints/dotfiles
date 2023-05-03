if status is-interactive
    set fish_greeting

    set -x EDITOR nvim
    set -x PATH /usr/local/bin $PATH
    set -x PAGER less
    set -x TERMINAL alacritty
    set -x TERM alacritty

    alias hx "helix"
    alias .. "cd .."
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

    starship init fish | source
end
