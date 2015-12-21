import os
os.system('ls')
os.system('sudo apt-get update')
os.system('sudo apt-get update -y && sudo apt-get install htop -y && sudo apt-get install tmux -y && sudo apt-get install vim -y')
os.system('sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev')
os.system('git clone git://github.com/sstephenson/rbenv.git .rbenv')
os.system('echo export PATH="$HOME/.rbenv/bin:$PATH" >> ~/.bashrc && echo export PATH="$HOME/.rbenv/bin:$PATH" >> ~/.bash_profile && echo eval "$(rbenv init -)" >> ~/.bashrc && echo eval "$(rbenv init -)" >> ~/.bash_profile && exec $SHELL')
os.system('git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build && echo export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH" >> ~/.bashrc && echo export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH" >> ~/.bash_profile && exec $SHELL && . .bashrc && . .bash_profile && git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash && rbenv install 2.2.3 && rbenv global 2.2.3 && ruby -v')
