#!/bin/bash

/Library/Frameworks/R.framework/Resources/bin/R -e 'rmarkdown::render("'./$1'")'
