# personal git config

## Table of Contents
1. [Split config](#split-config)
2. [Settings](#settings)
3. [Current user](#current-user)
4. [Other aliases](#other-aliases)
5. [Bootstrap](#bootstrap)
6. [SSH config](#ssh-config)
7. [Debug](#debug)
8. [Side notes](#side-notes)

## Split config
[git](http://git-scm.com) allow you to save configuration settings in multiple files (since Git 1.7.10+)  
You can put your aliases [^aliases] (all or some of them) into a separate file and create 'include' section in the config file.

```bash
[include]
    path=~/.gitaliases
```

## Settings
Besides aliases the config carries a few behaviour switches (`src/.gitconfig`):

```bash
[fetch]
    # remote-tracking refs and tags for deleted branches go away on every fetch
    prune = true
    pruneTags = true

[push]
    # first push of a new branch sets its upstream, no -u needed
    autoSetupRemote = true

[user]
    # fail instead of guessing an identity from username and hostname
    useConfigOnly = true
```

## Current user
In case of multiple environments work\personal\whatever it is nice to be able to figure out what is the current user and switch if needed.  

The identity itself lives in its own file, `~/.gituser`, included from the main config, so it can be overridden per environment.

Using this trivial alias you can check your current username/email settings.
```bash
    whoami = "!f() { echo \"$(git config user.name) <$(git config user.email)>\"; }; f"
```
Because `user.useConfigOnly` is set, a missing identity is an error instead of a name guessed from the username and hostname.

To set specific environment you can take a look at these [examples](https://github.com/yantonov/gitconfig/blob/master/examples/.gitaliases_custom).

## Other aliases
Check other aliases [here](https://github.com/yantonov/gitconfig/blob/master/src/.gitaliases)

## Bootstrap
You can keep your aliases under version control and create a symbolic link to the corresponding file.  
Symlink creation for configuration files can be simplified by using dot[^dot] tool.

## SSH config

Example for ssh config is [here](https://github.com/yantonov/gitconfig/blob/master/examples/ssh/config).

## Debug
Nice command to find source of override, for example for 'co'
```sh
    git config --show-origin --get-all alias.co
```

To see alias effective value, example for 'co'
```sh
    git config --get alias.co
```

## Side notes

[^aliases]: Aliases [documentation](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)  
[^dot]:[Dot](https://github.com/yantonov/dot) tool
