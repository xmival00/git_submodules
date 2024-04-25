GITUSER=xmival00
REPOSITORIES=("test_subtree1" "test_subtree2")

for REPO in "${REPOSITORIES[@]}"
do
  SUBDIR=$(echo "$REPO" | cut -d'_' -f2)

  echo $SUBDIR

  git remote add $REPO https://github.com/$GITUSER/$REPO.git
  git remote set-url subtree1 git@github.com:$GITUSER/$REPO.git
  git subtree add --prefix=brainmaze/$SUBDIR $REPO dev/brainmaze --squash # run this line only if you need a brand new. This will copy the folders from other repos.
done


