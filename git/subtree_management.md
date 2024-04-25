
## Adding Subtree as a repo

**Step 1.**
Add the repo as a remote (subtree1 is then used as a shortcut)

```git remote add subtree1 https://github.com/xmival00/test_subtree1.git```

```git subtree add --prefix=subtree1 subtree1 dev --squash```

- **--prefix=subtree1**: This tells Git to place the contents of the subtree into a directory named subtree1 within your main repository.
- **subtree1**: This is the name of the remote we added earlier.
- **dev**: This specifies the branch from the subtree repository you want to include.
- **--squash**: This option squashes all the commits from the subtree into a single commit in your main project, making the history cleaner.

```git subtree pull --prefix=subtree1 subtree1 master --squash```

```git subtree push --prefix=subtree1 subtree1 master```