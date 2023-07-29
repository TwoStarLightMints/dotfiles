if status is-interactive
    set fish_greeting

    set -x EDITOR helix
    set -x PATH /usr/local/bin $PATH
    set -x PAGER less
    set -x TERMINAL alacritty
    set -x TERM alacritty
    set -gx SHELL ~/usr/bin/fish

    abbr hx helix
    abbr .. "cd .."
    abbr config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
    abbr gclone "git clone"

    eval (zellij setup --generate-auto-start fish | string collect)

    starship init fish | source
end
