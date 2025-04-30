#!/bin/bash

# alias for adding all edited files to staging, opening the editor for commit
# message with prefilled current branch name and commiting.
# this alias is handy for saving time on commit messages while not messing up
# the commit message, which very likely must contain some tracker or certain
# phrase. It is ideal where you for example name your branches after JIRA
# tickets.
#
# can save a lot of time in the longrun and allows you to make more granular 
# commits
alias gitac='git add . && git commit -e -m $(git branch --show-current)'

# this one checksout default branch and deletes everything else. Idea for
# cleanup after a merge of PR
alias gitprune='DDEFBR=$(basename $(git symbolic-ref refs/remotes/origin/HEAD)) && git checkout $DDEFBR && git branch | grep -v $DDEFBR | xargs git branch -D && unset DDEFBR'

# this one pushes current branch to origin
alias gitpcb='git push origin $(git branch --show-current)'

# this one deletes a local repository and clones it again with the lates
# commit only. good for very busy forks that would take ages to sync
function gitrmcl () {
    BACK_DIR=$(pwd)
    cd $1 \
    && ORIGIN_URL=$(git remote get-url origin) \
    && REPO_DIR=$(pwd) \
    && cd .. \
    && rm -rf $REPO_DIR \
    && git clone --depth=1 $ORIGIN_URL
    cd $BACK_DIR
}
