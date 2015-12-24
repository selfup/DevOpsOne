import os
os.system('curl -sL https://deb.nodesource.com/setup | sudo bash - && sudo apt-get install -y nodejs')
os.system('sudo npm cache clean -f && sudo npm install -g n && sudo n stable')
os.system('gem install rails -v 4.2.4 --no-rdoc --no-ri && rbenv rehash && gem install pry && gem install ag')
os.system('mkdir -p ~/.rbenv/plugins && cd ~/.rbenv/plugins && git clone https://github.com/sstephenson/rbenv-vars.git && cd && sudo apt-get install postgresql postgresql-contrib libpq-dev -y')
