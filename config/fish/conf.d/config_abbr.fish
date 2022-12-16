# reset
for a in (abbr --list); abbr --erase $a; end

####
#  set abbreviations
abbr -a abe     'for a in (abbr --list); abbr --erase $a; end'
abbr -a abs     'source ~/.config/fish/conf.d/config_abbr.fish'
abbr -a abl     cat ~/.config/fish/conf.d/config_abbr.fish
abbr -a ll      ls -alFX
abbr -a .       cd ../
abbr -a ..      cd ../../
abbr -a ...     cd ../../../
abbr -a work    cd ~/WORK/
abbr -a w       which
abbr -a rr      rm -rf
abbr -a py      python
abbr -a e       exit
abbr -a gz      tar zcvf
abbr -a ungz    tar zxvf
abbr -a bz      tar jcvf
abbr -a unbz    tar jxvf
abbr -a dig     dig any +noall +answer
# apt
abbr -a sai     sudo apt install -y
abbr -a sar     sudo apt remove
abbr -a sas     sudo apt search
# brew
abbr -a b       brew
abbr -a bb      brew bundle --global
abbr -a bbd     brew bundle dump --global --force
abbr -a fcf     vi ~/.config/fish/config.fish
abbr -a sfcf    source ~/.config/fish/config.fish
# git
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
# docker
abbr -a d       docker
abbr -a de      docker exec -it
abbr -a da      docker attach
abbr -a di      docker images
abbr -a dp      docker ps -a
abbr -a dcp     docker-compose
abbr -a dcpb    docker-compose build
abbr -a dcpu    docker-compose up -d
abbr -a dcpd    docker-compose down
