import os
os.system('rbenv install 2.3.0')
os.system('rbenv global 2.3.0')
os.system('rbenv rehash')
os.system('export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init -)"')
os.system('ruby -v')
