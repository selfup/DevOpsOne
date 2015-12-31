import os
os.system('cd')
os.system('ls')
os.system('sudo apt-get update -y && sudo apt-get install htop -y && sudo apt-get install tmux -y && sudo apt-get install vim -y')
os.system('sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev -y')
os.system('git clone git://github.com/sstephenson/rbenv.git $HOME/.rbenv')
os.system('exec $SHELL')
