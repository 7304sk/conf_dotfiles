# reset
for a in (abbr --list); abbr --erase $a; end

# set
abbr -a abe     'for a in (abbr --list); abbr --erase $a; end'
abbr -a abs     'source ~/.config/fish/config_abbr.fish'
abbr -a abl     cat ~/.config/fish/config_abbr.fish
abbr -a ll      ls -alFX
abbr -a .       cd ../
abbr -a ..      cd ../../
abbr -a ...     cd ../../../
abbr -a w       which
abbr -a rr      rm -rf
abbr -a sai     sudo apt install -y
abbr -a sar     sudo apt remove
abbr -a sas     sudo apt search
abbr -a fcf     vi ~/.config/fish/config.fish
abbr -a sfcf    source ~/.config/fish/config.fish
abbr -a g       git
abbr -a gi      git init
abbr -a ga      git add .
abbr -a gc      git commit
abbr -a gp      git push
abbr -a gf      git fetch --prune
abbr -a gpl     git pull origin
abbr -a gm      git merge
abbr -a gr      git reset --hard
abbr -a gck     git checkout
abbr -a gckb    git checkout -b
abbr -a gb      git branch
abbr -a gcy     git cherry-pick
abbr -a gd      git diff --color-words --word-diff
abbr -a gst     git status
abbr -a gss     git stash save
abbr -a gsp     git stash pop stash@{0}
abbr -a gsl     git stash list
abbr -a gt      git tag
abbr -a py      python
abbr -a work    cd ~/WORK/
abbr -a e       exit
abbr -a gz      tar zcvf
abbr -a ungz    tar zxvf
abbr -a bz      tar jcvf
abbr -a unbz    tar jxvf
abbr -a dig     dig any +noall +answer
