# CAPICUAMAN DELI config.fish File


export PATH="$HOME/.cargo/bin:$PATH"

# STARTUP

# NEOFETCH 
neofetch


set fish_greeting ""



# ~/.config/fish/config.fish

# RUST
starship init fish | source


# RUBY
# Use rbenv to pick a Ruby version

set -x PATH $HOME/.rbenv/bin $PATH
rbenv init - | source
