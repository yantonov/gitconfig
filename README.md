#### personal git config

[git](http://git-scm.com) allow you to save configuration settings in multiple files (since Git 1.7.10+)
to use .gitaliases create 'include' section in git config file and add file like this

```bash
[include]
    path=~/.gitaliases
```

and put .gitalises file to ${HOME} directory (or create symlink to it).

p.s. Symlink creation for configuration files can be simplified by using [dot](https://github.com/yantonov/dot) tool.
