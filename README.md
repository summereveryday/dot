Open a terminal.

Generate keys if they don't exist.
(NOTE: don't set a password when doing this, otherwise you'll have to input one on every pull and push)

```bash
# Mac Terminal #
$ cat ~/.ssh/id_rsa.pub
$ ssh-keygen -t rsa # ↵
$ cat ~/.ssh/id_rsa.pub
$ touch ~/.ssh/config
```

```bash
# Windows PowerShell #
$ cat ~/.ssh/id_ed25519.pub
$ ssh-keygen -t ed25519 -C "your_email@example.com"
$ cat ~/.ssh/id_ed25519.pub
```

Add the public key to GitHub.

Get the repo.

```bash
$ cd
$ git init
$ git remote add origin git@github.com:summereveryday/dot.git
$ git pull origin main
$ source .bashrc
$ git push --set-upstream origin main
$ bash (to start using bash instead of zsh)
```

If using PowerShell in Windows

1. install posh git for tab autocomplete and branch visibility
2. open $PROFILE and copy `Microsoft.PowerShell_profile.ps1` to it
```bash
Install-Module posh-git -Scope CurrentUser
code $PROFILE
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
