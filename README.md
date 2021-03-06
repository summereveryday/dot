Open a terminal.

Generate keys if they don't exist.

```bash
$ cat ~/.ssh/id_rsa.pub
$ ssh-keygen -t rsa # ↵
$ cat ~/.ssh/id_rsa.pub
$ touch ~/.ssh/config
```

Add the public key to GitHub.

Get the repo.

```bash
$ cd
$ git init
$ git remote add origin git@github.com:summereveryday/dot.git
$ git pull origin master
$ source .bashrc
$ git push --set-upstream origin master
$ bash (to start using bash instead of zsh)
```

[Install iTerm2](https://www.iterm2.com/downloads.html)

iTerm2 > Preferences

 - Profiles > Text > Font > 14
 
 - Profiles > Terminal > check unlimited scrollback

 - Profiles > Colors > Color Presets... > Import

   - Press CMD + SHIFT + . to get hidden files and folders to show

   - Navigate to ~/.iterm/

   - Select all

 - Profiles > Colors > Color Presets... > chalk, half-dark


[Install Visual Studio Code](https://code.visualstudio.com/download)

 - Install Settings Sync by Shan Khan

   - Click LOGIN WITH GITHUB

   - Click Authorize shanalikhan

   - Select Visual Studio Code Settings Sync Gist

 - CMD + SHIFT + P

   - download settings

 - Multi-select case sensitive

   - Open a new file

   - COMMAND + OPTION + C

[Install Homebrew](https://brew.sh/)

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Add tab completion to iterm2
```bash
$ brew install git bash-completion
```

[Install RVM with latest stable Ruby](https://usabilityetc.com/articles/ruby-on-mac-os-x-with-rvm/)

```bash
$ brew install gnupg
$ gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
$ \curl -L https://get.rvm.io | bash -s stable --ruby
$ source .bashrc
$ which ruby # should not be /usr/bin/ruby
```

Make a code directory

```bash
$ cd
$ mkdir code
```

Install Bundler

```bash
$ gem install bundler
```

Install PostgreSQL

```bash
$ brew install postgresql
$ brew services start postgresql
```

Install pgcli

```bash
$ brew install pgcli
```

Install Node

```bash
$ brew install node
```

-------------------
Things I don't currently use but saving just in case
-------------------


Install Angular CLI

```bash
$ npm install -g @angular/cli@latest
```

Install RabbitMQ

```bash
$ brew install rabbitmq
```

```bash
$ source ~/.bashrc
# $ brew services start rabbitmq
$ rabbitmq-server
```

Install jq

```bash
brew install jq
```

Install tree

```bash
$ brew install tree
```

