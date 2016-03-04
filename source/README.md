# Getting Started Guide

## Setup Instructions

* `git clone git@github.com:food52/food52.github.io.git YOUR_PROJECT_NAME`
* `cd YOUR_PROJECT_NAME`
* `gem install bundler`
* `git fetch`
* `git checkout source`
* `bundle exec middleman` (to run in your local browser)
* `bundle exec middleman build` (to generate a build)


## Writing Instructions
Since organization pages (such as this one) need to be served via
the master branch on Github pages, you'll need to do your writing on
the source branch. Make sure to checkout source before you start anything
as master will only house the built files.

`git checkout source`

Then a shortcut, you can run

`middleman article TITLE`

and Middleman will create a new article for you in the right place with the right filename.
You can pass --date, --lang, and --blog options to this command.

## Deploying
To deploy to Github pages simply run:

`middleman deploy --build-before`
