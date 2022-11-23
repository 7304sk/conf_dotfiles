#! include abbr settings
source ~/.config/fish/config_abbr.fish
source ~/.config/fish/config_functions.fish

#! alias
alias vi='nvim'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

#! Countermeasures against Japanese garbled characters
export LANG=ja_JP.UTF-8

if test (uname -s) = "Darwin"
    #! for mac OS.
    eval /opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
    set -xg PATH /opt/homebrew/opt/coreutils/libexec/gnubin /opt/homebrew/bin $PATH
else
    #! for other OS(Linux).
    eval ~/anaconda3/bin/conda "shell.fish" "hook" $argv | source
    set -xg PATH $HOME/.npm-global/bin $PATH
    alias update='echo -e "\n\e[33m##### Update list of packages. #####\e[m\n" && sudo apt update && echo -e "\n\e[33m##### List of packages is updated. #####\n##### NEXT: Upgrade all packages #####\e[m\n" && sudo apt upgrade && echo -e "\n\e[33m##### All installed packages are upgraded. #####\n##### NEXT: Remove packages that are no longer needed #####\e[m\n" && sudo apt autoremove && echo -e "\n\e[33m##### Packages that are no longer needed for the update are removed. #####\n##### NEXT: Clean up cached files #####\e[m\n" && sudo apt clean && echo -e "\n\e[33m##### all cached deb files are deleted. #####\e[m\n"'
end

#! initialize Python
set -xg PYTHONPATH $HOME/WORK/__lib__ $PYTHONPATH
conda activate main

#! include unique configuration file
source ~/.config/fish/config_unique.fish