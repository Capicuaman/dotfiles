# CAPICUAMAN DELI config.fish File
# ~/.config/fish/config.fish

export PATH="$HOME/.cargo/bin:$PATH"

# STARTUP

neofetch
set fish_greeting ""


# RUST
starship init fish | source


# RUBY
# Use rbenv to pick a Ruby version

set -x PATH $HOME/.rbenv/bin $PATH
rbenv init - | source


