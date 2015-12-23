#### DevOpsOne

##### For Rails, rbenv, rbenv-vars, Ubuntu, and Postgres

When on Ubuntu, a DB needs to be created with the same name as the username that rails autogenerates in the config/database.yml file

There are from scratch setup scripts written in python.

Once ruby is installed the ruby script will hook everything up.

The idea here is to create a ```valid database.yml``` file, as well as set correct ```ENV``` variables in a ```.rbenv-vars``` file. 

# How To Use

#### On a Ubuntu Server

[server_from_scratch_gist](https://gist.github.com/selfup/24d5901b0610fdbf7692)

#### On a Ubuntu Desktop

[desktop_from_scratch_gist](https://gist.github.com/selfup/3449f7671d5492506cc7)

#### On a Vagrant hashicorp/precise32 box

[vagrant_box_from_scratch_gist](https://gist.github.com/selfup/025dab4b72f5d9d56e10)

##### My next feautre is to automagically create the password based on your ARGV[0] for the new pg user as well as write a CHEF recipe to do this all for you when provisioning new VM's or VPS's.

#### One script to automate the whole process!

