if status is-interactive
    set fish_greeting

    set -x EDITOR helix
    set -x PATH /usr/local/bin $PATH
    set -x PAGER less
    set -x TERMINAL alacritty
    set -x TERM alacritty
    set -gx SHELL ~/usr/bin/fish
    set -x ZELLIJ_AUTO_ATTACH true


    if not set -q ZELLIJ
        if test "$ZELLIJ_AUTO_ATTACH" = true
            zellij attach main
        else
            zellij
        end

        if test "$ZELLIJ_AUTO_EXIT" = true
            kill $fish_pid
        end
    end

    abbr hx helix

    abbr .. "cd .."
    abbr ... "cd ../.."
    abbr cdprog "cd ~/Documents/Programming"

    function cdmkdir
        mkdir $argv
        cd $argv
    end

    abbr gitinit "git init -b main"
    abbr config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
    abbr configa "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME add"
    abbr configm "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME commit -m"
    abbr configpsm "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME push origin main"
    abbr configpum "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME pull origin main"

    abbr gitcl "git clone"
    abbr gita "git add"
    abbr gitco "git commit -m"
    abbr gits "git status"
    abbr gitps "git push origin"
    abbr gitpu "git pull origin"

    starship init fish | source
end
