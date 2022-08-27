#!/bin/bash
set -ue

helpmsg() {
    command echo "Usage: $0 [--help | -h]" 0>&2
    command echo ""
}

create_symlink() {
    command echo "backup old dotfiles..."
    if [ ! -d "$HOME/.dotbackup" ];then
        command echo "$HOME/.dotbackup not found. Auto Make it"
        command mkdir "$HOME/.dotbackup"
    fi

    local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
    local dotdir="${script_dir}/dotfiles"
    if [[ "$HOME" != "$dotdir" ]];then
        for f in $dotdir/.??*; do
            [[ `basename $f` == ".git" ]] && continue

            if [[ -L "$HOME/`basename $f`" ]];then
                command rm -f "$HOME/`basename $f`"
            fi
            if [[ -e "$HOME/`basename $f`" ]];then
                command mv "$HOME/`basename $f`" "$HOME/.dotbackup"
            fi
            command ln -snf $f $HOME
        done
    else
        command echo "same install src dest"
    fi
}

while [ $# -gt 0 ];do
    case ${1} in
        --debug|-d)
        set -uex
        ;;
        --help|-h)
        helpmsg
        exit 1
        ;;
        *)
        ;;
    esac
    shift
done

ESC=$(printf '\033')

command printf "${ESC}[36m >>> Installing dotfiles... ${ESC}[m\n"
create_symlink
command printf "${ESC}[33m <<< Install completed! ${ESC}[m\n"