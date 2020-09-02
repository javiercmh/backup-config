#!/bin/bash

git config --global user.email "javiercmh@gmail.com"
git config --global user.name "Ja Vier"

git config --global credential.helper store
git pull

# note to future self: to clone repositories of a different username,
# use the form "user@github.com/repository"
