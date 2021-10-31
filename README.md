#### personal git config

[git](http://git-scm.com) allow you to save configuration settings in multiple files (since Git 1.7.10+)  
You can put your aliases [^aliases] into the separate file and create 'include' section in the config file:

```bash
[include]
    path=~/.gitaliases
```

Also, you can keep your aliases under version control and create a symbolic link to the corresponding file.  
Symlink creation for configuration files can be simplified by using dot[^dot] tool.

[^aliases]: Aliases [documentation](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)  
[^dot]:[Dot](https://github.com/yantonov/dot) tool
