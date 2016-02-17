import os
os.system('echo export PATH="$HOME/.rbenv/bin:$PATH" >> ~/.bashrc')
os.system('echo export PATH="$HOME/.rbenv/bin:$PATH" >> ~/.bash_profile')
os.system('echo eval "$(rbenv init -)" >> ~/.bashrc')
os.system('echo eval "$(rbenv init -)" >> ~/.bash_profile')
os.system('git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build')
