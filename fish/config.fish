# Globals
set -gx fish_greeting ''
set -gx EDITOR nvim


# Login Shell
if status is-login
    . ~/.config/fish/env.fish
end

# Interactive Shell
if status is-interactive
    # Aliases
    . ~/.config/fish/aliases.fish
end
