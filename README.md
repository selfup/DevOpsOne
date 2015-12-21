#### DevOpsOne

##### For Rails, rbenv, rbenv-vars, Ubuntu, and Postgres

When on Ubuntu, a DB needs to be created with the same name as the username that rails autogenerates in the config/database.yml file

The idea here is to create a ```valid database.yml``` file, as well as set correct ```ENV``` variables in a ```.rbenv-vars``` file. 

Eventually this script will pull the ouput from ```rake secret``` to make the whole app ready for production and auto run ```RAILS_ENV=production rake db:setup```

Then the pg database would get created with a default password that the user can change later.

This way developing on a Linux machine can be much faster!

# Disclaimer

##### If you didn't set up a postgres user with the same name as your rails app, ```rake db:setup``` will not work!

Also: you still need to make a ```SECRET_KEY_BASE``` ```ENV``` var in your ```.rbenv-vars``` file for production commands to work

# How To Use

#### On a Ubuntu Server

Clone this at root

Go to your rails app directory

    ruby ~/DevOpsOne/create_db_yml_server.rb the_password_you_set

Now you can ```rake db:setup```

You may also ```RAILS_ENV=production  rake db:setup```

#### On a Ubuntu Desktop

Clone this at root

Go to your rails app directory

    ruby ~/DevOpsOne/create_db_yml_desktop.rb the_password_you_set

Now you can ```rake db:setup```

You may also ```RAILS_ENV=production  rake db:setup```

### The script now creates a new pg user but you still ahve to manually make a password for that pg user

    sudo -u postgres psql
    \password your_pg_user_name
    \q

##### My next feautre is to automagically create and PG Database as well as the ```config/database.yml``` file

####One script to automate the whole process!

