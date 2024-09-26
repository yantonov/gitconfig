# personal git config

## Table of Contents
1. [Split config](#split-config)
2. [Current user](#current-user)
3. [Other aliases](#other-aliases)
4. [Bootstrap](#bootstrap)
5. [SSH config](#ssh-config)
6. [Side notes](#side-notes)

## Split config
[git](http://git-scm.com) allow you to save configuration settings in multiple files (since Git 1.7.10+)  
You can put your aliases [^aliases] into the separate file and create 'include' section in the config file:

```bash
[include]
    path=~/.gitaliases
```

Using include section also you can define settings for different (personal/work) environments.  
See the example [here](https://github.com/yantonov/gitconfig/blob/master/examples/.gitaliases_custom).  

## Current user
In case of multiple environments work\personal\whatever it is nice to be able to figure out what is the current user and switch if needed.  

Using this trivial alias you can check your current username/email settings.
```bash
    whoami = "!f() { git config user.name; git config user.email; }; f"
```
To set specific environment you can take a look at these [examples](https://github.com/yantonov/gitconfig/blob/master/examples/.gitaliases_custom).

## Other aliases
Check other aliases [here](https://github.com/yantonov/gitconfig/blob/master/config/.gitaliases)

## About bootstrap
Also, you can keep your aliases under version control and create a symbolic link to the corresponding file.  
Symlink creation for configuration files can be simplified by using dot[^dot] tool.

## SSH config

Example for ssh config is [here](https://github.com/yantonov/gitconfig/blob/master/examples/ssh/config).

## Side notes

[^aliases]: Aliases [documentation](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)  
[^dot]:[Dot](https://github.com/yantonov/dot) tool
