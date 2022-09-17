# Rewrite Git History
-----------------------------
* We can 
  * Rewrite the commit message
  * Delete the commit
  * Merge two commits
* Lets create a folder and convert the folder into git repository and add 5 commits to the repository.
```
mkdir commit
cd commit
git init
```
![preview](./Images/github86.png)
```
touch {1..5}.py
git add 1.py
git commit -am "1.py"
git add 2.py
git commit -am "2.py"
git add 3.py
git commit -am "3.py"
git add 4.py
git commit -am "1.py"
git add 5.py
git commit -am "1.py"
```
![preview](./Images/github87.png)
---------------------------------
### Rewriting the latest commit message
--------------------------------
* Now lets check the log of the repository.
```
git log --oneline
```
![preview](./Images/github88.png)
* Here while we commit 4 and 5 file we had given wrong commit messages.
* Now lets Rewrite these commit messages.
```
git commit --amend
```
![preview](./Images/github89.png)
* we can see that an editor with the latest commit message has poped up.
> **_NOTE:_** To start insert into the editor press `i`.
> 
> * To save and exit the changes press `esc` and enter `:wq`.
>
> * To exit without saving the changes press `esc` and enter `:q!`.
* Now lets Rewrite the commit message and save the message.
![preview](./Images/github90.png)
* We have rewrite the latest commit and now lets save and exit.
```
git log --oneline
```
![preview](./Images/github91.png)
---------------------------------------------
### Rewriting the commit message (Not latest)
---------------------------------------------
* Lets check the logs of the Local repository.
```
git log --oneline --all
```
![preview](./Images/github92.png)
* Here there is `1.py` instead of `4.py`.
* To rewrite this commit message, we can use `git commit --amend` if it is the latest commit.
* But we has another commit after the commit `1.py`.
* To rewrite the commit that is not latest commit we can use `rebase -i HEAD~<number-of-commits-away-from-head>`.
* Now lets rewrite the commit `1.py`.
> **_NOTE:_** Here the `1.py ` is 2 commits from the latest commit.
```
git rebase -i HEAD~2
```
![preview](./Images/github93.png)
* Here an editor poped up and we can see the laste two commit messages, Id's and some instructions below.
* We can see that there is `pick` before every commit id.
* We can see in the instructions that to rewrite the commit message replace the `pick` with `reword`.
> **_NOTE:_** To start insert into the editor press `i`.
> 
> * To save and exit the changes press `esc` and enter `:wq`.
>
> * To exit without saving the changes press `esc` and enter `:q!`.

![preview](./Images/github94.png)
![preview](./Images/github95.png)
![preview](./Images/github96.png)
* Now lets check the logs of the local repository.
```
git log --oneline --all
```
![preview](./Images/github97.png)
* Now we have rewrited the wrong commit message.
----------------------
### Merge two commits
-------------------------------------------------
* Now lets create two files `6.py` and `7.py` and commit each file separetly.
```
touch 6.py
git add .
git commit -am "Added 6.py"
touch 7.py
git add .
git commit -am "Added 7.py"
```
![preview](./Images/github98.png)
* Now we need to merge this two commits `Added 6.py`, `Added 7.py` and merge them into a single commit `Added 6.py and 7.py`.
* To merge two commits we use `rebase -i git rebase -i HEAD~<No-of-commits-from-the-head>`.
> **_NOTE:_** Here we need to merge `6.py` and `7.py` so we just need latest 2 commits `HEAD~2`
```
git rebase -i HEAD~2
```
> **_NOTE:_** To start insert into the editor press `i`.
> 
> * To save and exit the changes press `esc` and enter `:wq`.
>
> * To exit without saving the changes press `esc` and enter `:q!`.

![preview](./Images/github99.png)
![preview](./Images/github100.png)
* Now we have merged the two commits. Lets check the log of the repository.
```
git log --oneline
```
![preview](./Images/github101.png)
-----------------------------------
### Delete the unwanted commit
------------------------------
* Lets say we have added some unwanted files and commited them by mistake.
* Now we have to remove those commits. To do so we have to use `git rebase -i HEAD~<No-of-commits-from-the-head>`.
![preview](./Images/github102.png)
* We have have commit `Added 6.py 7.py` in our repository and we dont need this commit anymore.
* So lets this remove this commit.
```
git rebase -i HEAD~1
```
> **_NOTE:_** To start insert into the editor press `i`.
> 
> * To save and exit the changes press `esc` and enter `:wq`.
>
> * To exit without saving the changes press `esc` and enter `:q!`.

![preview](./Images/github103.png)
* Now we have deleted the commit. So lets check the log of the commits.
![preview](./Images/github104.png)