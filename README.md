# Bash aliases

Aliases to boost productivity.

## Installation

Run this command:

```bash
mkdir ~/.bashrc.aliases.d
echo 'for alias_script in $(find -L ~/.bashrc.aliases.d -type f -name *.sh); do source $alias_script; done' >> ~/.bashrc
```

Clone this directory and set a symlink to `~/.bashrc.aliases.d`


```bash
cd <your git home>
git clone --depth=1 https://github.com/adam-number-1/bash-aliases.git && \
ln -s "$(pwd)/bash-aliases/src" ~/.bashrc.aliases.d
```

Alternatively just copy desired alias scripts from `src` of this repository into
the `~/.bashrc.aliases.d` on your machine.