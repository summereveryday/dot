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
$ git remote add origin git@github.com:lucaswinningham/dot.git
$ source .bashrc
$ git push --set-upstream origin master
```
