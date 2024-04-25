GITUSER=xmival00
REPOSITORIES=("test_subtree1" "test_subtree2")

for REPO in "${REPOSITORIES[@]}"
do
  #echo https://github.com/$GITUSER/$REPO.git
  git remote add $REPO https://github.com/$GITUSER/$REPO.git
  git subtree add --prefix=brainmaze/$REPO $REPO dev --squash
  git remote set-url subtree1 git@github.com:$GITUSER/$REPO.git
done

