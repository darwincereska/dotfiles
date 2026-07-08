if status is-interactive
    # Aliases
    alias ls="eza"
    alias cd="z"


    zoxide init fish | source
    starship init fish | source
end
