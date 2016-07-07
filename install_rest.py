import os
os.system('curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && sudo apt-get install -y nodejs')
os.system('gem install rails -v 4.2.5 --no-rdoc --no-ri && rbenv rehash && gem install pry && gem install ag')
os.system('mkdir -p ~/.rbenv/plugins && cd ~/.rbenv/plugins && git clone https://github.com/sstephenson/rbenv-vars.git && cd && sudo apt-get install postgresql postgresql-contrib libpq-dev -y')
