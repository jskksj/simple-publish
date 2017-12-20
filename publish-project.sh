#!/usr/bin/env bash

if [ $1 == 't' ]
   then
       # publish-project t will build all the HTML files.
       emacs --batch --load publish-project.el --eval '(org-publish "simple-publish" t)'
   else
       # publish-project nill will build only the modified HTML files.
       emacs --batch --load publish-project.el --eval '(org-publish "simple-publish" nil)'
fi
