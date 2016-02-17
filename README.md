# DevOpsOne

##### For Ruby (2.3.0), Rails (4.2.5), rbenv, rbenv-vars, Ubuntu (12.04 - 15.10), and Postgres (9.4 - 9.5)

##### Also works on Raspbian (Raspberry Pi) and Debian!

# Different Paths to Take From This README

* OSX intructions are at the bottom for devs wanting to run production locally or to make sure everything works before pushing to Heroku.

* Looking for a Dockerfile that sets up a container for you? Go to this repo I made! 

* [DockerOne](https://github.com/selfup/DockerOne)

* **All Things Debian are in the *How to Use (Ubuntu)* section**



# Instructions and Reason/Purpose

##### Please copy and paste scripts line by line! This will ensure that everything works as planned.

* You can then run my production scripts for rails once you clone and bundle a repo

When on Ubuntu, a DB needs to be created with the same name as the username that rails autogenerates in the config/database.yml file

There are a few from scratch setup scripts written in python that will setup the desired enviornment. Should take 5-10 minutes depending on how long it takes to compile ruby on your VPS/Machine.

Once ruby/rails/node/postgres are installed the ruby script will hook everything up to an app that you clone down.

The idea here is to create a ```valid database.yml``` file, as well as set correct ```ENV``` variables in a ```.rbenv-vars``` file. 

Run the ruby script for the correct machine state (VM, VPS, Desktop, OSX), and your app will be production ready!

# How To Use (Ubuntu)

#### To create valid ENV vars/PG user/database.yml

[production_ready_rails_ubuntu](https://gist.github.com/selfup/8552639296105b464750)

### To setup from scratch:

#### On a Ubuntu/Debian Server

[server_from_scratch_gist](https://gist.github.com/selfup/24d5901b0610fdbf7692)

#### On a Ubuntu/Debian/Raspbian Desktop

[desktop_from_scratch_gist](https://gist.github.com/selfup/3449f7671d5492506cc7)

#### On a Vagrant hashicorp/precise32 box and or bento/debian-8.2 box

[vagrant_box_from_scratch_gist](https://gist.github.com/selfup/025dab4b72f5d9d56e10)

##### My next feautre is to automagically create the password based on your ARGV[0] for the new pg user as well as write a CHEF recipe to do this all for you when provisioning new VM's or VPS's.

#### One script to automate the whole process!

# OSX

I made an extra script for OSX that can handle both creating a valid database.yml and ENV variables for figaro or .rbenv-vars

This script will ```.gitignore``` ```application.yml``` if ```which ruby``` return rvm. 

Make sure to ```figaro install``` prior to using this script if you use figaro!

**Clone this at root!**

Cd into your app directory:

    ruby ~/DevOpsOne/create_db_yml_OSX.rb someRandomPasswordHere
    
    RAILS_ENV=production rake db:setup
    RAILS_ENV=production rake assets:precompile
    RAILS_ENV=production rails s

That's it! 

If you are using Fish add ```env``` infront of ```RAILS_ENV=production```

Example: ```env RAILS_ENV=production rake db:setup```

My script assumes that if ```which ruby``` returns rbenv, that you have rbenv-vars. If it outputs ```rvm``` then it will add the new ENV variables to your application.yml

**Please be *sure* to add either .rbenv-vars OR application.yml to your .gitignore!**

This is an OpenSource Project. Pull requests accepted!

I officially released this to the public on Christmas Day. Enjoy it!

What it feels like:

![](https://i.imgur.com/LXg0mHe.png)

TODO:

* Going to work on a script that changes a rails app that is connected to sqlite3 to postgres
* Going to work on a script that only sets up python3, ruby, node, mongo, and postgres
* Figure out more fun stuff to work on!
