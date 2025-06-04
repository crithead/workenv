# Append to user's bashrc
export EDITOR=vi
export TMPDIR=$HOME/.local/tmp

# Path enhancements
#export RUSTBIN=$HOME/.cargo/bin

if ! [[ $PATH =~ $USER ]]; then
    export PATH=~/bin:~/.local/bin:$PATH
fi

# Alias definitions
if [ -f ~/.bash_alias ]; then
    . ~/.bash_alias
fi

# Fancy prompt
if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

