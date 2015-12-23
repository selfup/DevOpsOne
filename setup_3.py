import os
os.system('echo export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH" >> ~/.bashrc')
os.system('echo export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH" >> ~/.bash_profile')
os.system('git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash')
os.system('exec $SHELL')
