#!/bin/bash
# Create an SVN compatible diff for the given SHA.
git diff --no-prefix $1{^,} |
sed -e "s/^+++ .*/&     (working copy)/" -e "s/^--- .*/&        (revision $REV)/" \
-e "s/^diff --git [^[:space:]]*/Index:/" \
-e "s/^index.*/===================================================================/"
