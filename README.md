# Bash aliases

Aliases to boost productivity.

## Installation

Run this command:

```bash
mkdir ~/.bashrc.aliases.d
echo 'for alias_script in $(find ~/.bashrc.aliases.d -type f); do source $alias_script; done' >> ~/.bashrc
```

Copy desired alias scripts from `src` of this repository into the `~/.bashrc.aliases.d` on your machine.