# Globals
set -gx fish_greeting ''                # Remove fish greeting
set -gx EDITOR nvim                     # Set default editor as neovim


# Login Shell
if status is-login
    . ~/.config/fish/env.fish           # Environment variables
    . ~/.config/fish/aliases.fish       # Aliases
    emacs --daemon                      # Launch emacs server
end

# Interactive Shell
if status is-interactive
end
