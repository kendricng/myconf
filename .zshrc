# .zshrc
# Manages master .zshrc configuration for my workstation
#
# Author: @kendricng
# Source: https://github.com/kendricng/myconf/blob/main/.zshrc

# Default path
export PATH="$PATH:/opt/bin"

# Appearance
export CLICOLOR=1
export TERM="xterm-color"

# Git config for tracking config files
alias config="/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME"

# python pyenv customization
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include" 

# Poetry package management
export PATH="$HOME/Library/Python/3.9/bin:$PATH"

# Coursier scala package management
export PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"

# Artifactory export settings
export SBT_CREDENTIALS="$HOME/.sbt/credentials"

# Spark settings
export PATH="$PATH:/usr/local/spark/bin"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Starship Terminal
eval "$(starship init zsh)"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
