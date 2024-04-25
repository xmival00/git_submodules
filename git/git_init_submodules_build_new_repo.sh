GITUSER=xmival00
REPOSITORIES=("repo1" "repo2")

for REPO in "${REPOSITORIES[@]}"
do
  #echo https://github.com/$GITUSER/$REPO.git
  git remote add $REPO https://github.com/$GITUSER/$REPO.git
  git subtree add --prefix=brainmaze/$REPO $REPO dev --squash
  git remote set-url subtree1 git@github.com:$GITUSER/$REPO.git
done

