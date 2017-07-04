import os

os.system('cd')

os.system('sudo apt-get update -y && sudo apt-get install htop -y && sudo apt-get install tmux -y && sudo apt-get install vim -y')
os.system('sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev -y')
os.system('git clone git://github.com/sstephenson/rbenv.git .rbenv')
os.system('echo \'export PATH="$HOME/.rbenv/bin:$PATH"\' >> ~/.bashrc')
os.system('echo \'eval "$(rbenv init -)"\' >> ~/.bashrc')
os.system('source ~/.bashrc')

os.system('git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build')
os.system('echo \'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"\' >> ~/.bashrc')
os.system('source ~/.bashrc')

os.system('rbenv install 2.4.0')
os.system('rbenv global 2.4.0')
os.system('gem install bundler')
os.system('rbenv rehash')

os.system('curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash - && sudo apt-get install -y nodejs')
os.system('gem install rails -v 5.1.1 --no-rdoc --no-ri && rbenv rehash && gem install pry')
os.system('mkdir -p ~/.rbenv/plugins && cd ~/.rbenv/plugins && git clone https://github.com/sstephenson/rbenv-vars.git && cd && sudo apt-get install postgresql postgresql-contrib libpq-dev -y')
