# Remove fish default greeting
set --erase fish_greeting

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
set fish_plugins brew gi git-flow osx

# Theme
set fish_theme xgalaxy

# Path to your custom folder (default path is $FISH/custom)
set fish_custom $HOME/Dropbox/dotfiles/fish/custom

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
