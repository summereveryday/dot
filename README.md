Open a terminal.

Generate keys if they don't exist.

```bash
$ cat ~/.ssh/id_rsa.pub
$ ssh-keygen -t rsa # ↵
$ cat ~/.ssh/id_rsa.pub
$ touch ~/.ssh/config
```

Add the public key to GitHub.

Get the repo. (NOTE: don't set a password when doing this, otherwise you'll have to input one on every pull and push)

```bash
$ cd
$ git init
$ git remote add origin git@github.com:summereveryday/dot.git
$ git pull origin main
$ source .bashrc
$ git push --set-upstream origin main
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

 - Login with Github and Sync Settings

[Install Homebrew](https://brew.sh/)

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Make a code directory

```bash
$ cd
$ mkdir code
```
