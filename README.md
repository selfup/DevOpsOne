#### DevOpsOne

First script for automating Postgres and Rails apps connections

When on Ubuntu, a DB needs to be created with the same name as the db username that rails autogenerates in the config/database.yml file

The idea here is to create a valid database.yml file, as well as set correct ENV variables in a .rbenv-vars file. Also this script will pull the ouput from ```rake secret``` to make the whole app ready for production and auto run ```RAILS_ENV=production rake db:setup```

Then the pg database would get created with a default password that the user can change later.

This way developing on a Linux machine can be much faster!

