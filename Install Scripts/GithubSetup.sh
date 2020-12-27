#!/bin/bash -eux

sudo add-apt-repository -y ppa:git-core/ppa 
sudo aptitude -y install  git git-extras

git config --global user.name "jacgit18"
git config --global user.email jacdevgoo2020@gmail.com

sudo aptitude -y update && sudo aptitude -y upgrade


cd Documents/
git clone https://github.com/jacgit18/Setup-Testing-Script.git
git clone https://github.com/jacgit18/BashConfigFiles.git


# git init always use when adding new repo initialization
# go to GitHub to add a repository also check box to initialize the repo with a README and create .gitignore
# git remote add origin https://github.com/jacgit18/Python-sorts---search.git
# git remote set-url origin https://github.com/jacgit18/Python-sorts---search.git
# git pull origin master - this is a manual pull that allows you to set upstream after
# git branch --set-upstream-to=origin/master - this tells you which branch to pull and push from you can set up multiple upstream, for example, you fork from someone project and you want an upstream from your fork and the original person project
# edit readMe file

# Other commands:
    # this adds all changed files : git add -A
    # a description of changes and add code changes to main file but copy current version of code if you want to go back also write comment that describes change: git commit -m "changed thing"
    # uploads changes to repo: git push
    # Remove directory : git rm -r .name of directory
    # after removing directory input git add and git commit and git push
    # remove modified directory: git rm -r -f .name of directory
    # then git commit and push
    #                                          ignore an directory
    # ignore an directory: git -ignore .name of directory/*
    # ignore an directory: git -ignore .name of directory
    # ignore an directory: git -ignore .name of directory/
    #  do another git add and commit and push

# Resolving merge conflicts through terminal
    # create a new directory cd to it then do these commands:
    # git init then remote add origin with the same URL then pull orign master
    # now you have two directories with the same project add changes to new directory just add a comment or something
    # now git add -A and do a commit and push origin master
    # now you have a situation where you have your original directory behind the master branch
    # so now add a comment or something the original director save it then cd to original directory do a git add and commit and attempt to push changes to the server even though were behind when it comes to the changes in our local repo is behind.
    # so do a git fetch origin master and a git merge which adds your changes and the changes from the server so what it looks like is we are pulling from both of the directories
    # now do a git add and commit and only a git push

# How to setup and manage branches:
    # display branches with - git branch -a
    # create branch : git checkout -b name of branch
    # git status
    # follow video a little
    # in terminal type git branch version name then git add and commit then push origin version name
    # the reason this is useful if you have multiple people working on different features
    # switch between branches, in this case, we have v01 and master use command git checkout branch name
    # this will merge branches git merge branch name branch name
    # then git push origin master

# Merging branches after changes
    # if you merging first git checkout to branch you want updated than git
    #  checkout to to the branch you want to merge in are case master than 
    #  git merge branch name this will merge the master branch with whatever
    #   branch you referenced and git add -a and commit than git push

# Undoing Changes (ordered by safety from safe to dangerous)
    # git log [<options>] [<revision range>] [[--] <path>…​]- git log provides log of of commits use git log --oneline
    # git Checkout commit - checkout things aren't saved doing this cause you to leave master branch to go back do git checkout master
    # git Revert commit - allows you to undo changes of commit without deleting, when doing this a text editor comes up just press shift colon and type wq then enter
    # git Reset commit - undo changes but delete the previous commits

# Windows 10 setup
    # Download git at: https://git-scm.com/
    #  go to git terminal type or paste $ git config --global user.name "jacgit18"
    # $ git config --global user.email "joshuacarpentier21@gmail.com"
    # Then just use commands you use in linux
    # google how to create repo for windows if commands dont work



exit 0
