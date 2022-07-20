if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vi="nvim"
set gx EDITOR=nvim

starship init fish | source
