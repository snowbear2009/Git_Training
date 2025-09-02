1. **Fork the main repository**

   * Visit the MAIN repository
   * Fork the repository

2. **Clone the fork you just made to your local machine**

3. Run ```bash setup-git-config.sh```. This file is present in the root of the repository, more details on what this does is available within the bash file.

4. **Add the main repo as a remote named `upstream`**
    git remote add upstream <URL>

### Each Time You Want to Contribute a Feature

4. **Create a new branch for your feature on your local machine**

5. **Work on your feature**

   * Make code changes
   * Add and commit them:

6. **Push your branch to your own GitHub fork**

7. **Notify the Integration Manager (IM)**

   * Send an email or message with:

     * Your GitHub repo URL
     * The branch name you want merged

### Keeping Your Fork Up-to-Date

8. **When IM merges others' features into the main repo**, you’ll be notified.

9. **Pull latest changes into your fork**
   Make sure you're on your `main` branch:

   ```bash
   git checkout main
   git fetch upstream
   git merge upstream/main
   ```

   OR

   ```bash
   git pull upstream main
   ```

10. **Push the updated main back to your own fork**

    ```bash
    git push origin main
    ```

---

## For the Integration Manager (IM)

### When a contributor sends an update:

11. **Navigate to your local clone of the main repo**


12. **Add the contributor’s repo as a remote**
    (only needed once per contributor):

    ```bash
    git remote add contributor-alias https://github.com/their-username/Git_Training.git
    ```

13. **Fetch and merge the feature branch**

    ```bash
    git fetch contributor-alias
    git checkout main
    git merge --no-ff contributor-alias/feature/branch-name -m "Merge: feature description from contributor"
    ```
    You can avoid having to type ```--no-ff``` each time by configuring Git to always prevent fast-forward merges.
    There is a config file in the repo,

14. **Push the merged result to the main repo**

    ```bash
    git push origin main
    ```

15. **Notify all contributors that main has been updated**

---
## Recommended commit message format

https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html