if status is-interactive
    set fish_greeting

    set -x EDITOR nvim
    set -x PATH /usr/local/bin $PATH
    set -x PAGER less
    set -x TERMINAL alacritty
    set -x TERM alacritty
    set -gx SHELL ~/usr/bin/fish

    alias hx "helix"
    alias .. "cd .."
    alias config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
    alias gclone "git clone"

    eval (zellij setup --generate-auto-start fish | string collect)

    starship init fish | source
end
