#### DevOpsOne

##### For Rails, rbenv, rbenv-vars, Ubuntu, and Postgres

##### OSX intructions at bottom for devs running into production errors on Heroku

When on Ubuntu, a DB needs to be created with the same name as the username that rails autogenerates in the config/database.yml file

There are a few from scratch setup scripts written in python that will setup the desired enviornment. Should take 5-10 minutes depending on how long it takes to compile ruby on your VPS/Machine.

Once ruby/rails/node/postgres are installed the ruby script will hook everything up to an app that you clone down.

The idea here is to create a ```valid database.yml``` file, as well as set correct ```ENV``` variables in a ```.rbenv-vars``` file. 

Everytime you git pull from your repo, run the ruby script, and your app will be production ready.

# How To Use

#### To create valid ENV vars/PG user/database.yml

[production_ready_rails_ubuntu](https://gist.github.com/selfup/8552639296105b464750)

### To setup from scratch:

#### On a Ubuntu Server

[server_from_scratch_gist](https://gist.github.com/selfup/24d5901b0610fdbf7692)

#### On a Ubuntu Desktop

[desktop_from_scratch_gist](https://gist.github.com/selfup/3449f7671d5492506cc7)

#### On a Vagrant hashicorp/precise32 box

[vagrant_box_from_scratch_gist](https://gist.github.com/selfup/025dab4b72f5d9d56e10)

##### My next feautre is to automagically create the password based on your ARGV[0] for the new pg user as well as write a CHEF recipe to do this all for you when provisioning new VM's or VPS's.

#### One script to automate the whole process!

# OSX

Clone this at root!

Cd into your app directory:

    ruby ~/DevOpsOne/create_db_yml_OSX.rb some_random_password_here
    
    RAILS_ENV=production rake db:setup
    RAILS_ENV=production rake assets:precompile
    RAILS_ENV=production rails s

I made an extra script for OSX that can handle both creating a valid database.yml and ENV variables for figaro or .rbenv-vars

My script assumes that if ```which ruby``` returns rbenv, that you have rbenv-vars. If it outputs ```rvm``` then it will append the new ENV variables to your application.yml

**Please be *sure* to add either .rbenv-vars OR application.yml to your .gitignore!**

