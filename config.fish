if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vi="nvim"
set fish_greeting
set -gx EDITOR nvim
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set -gx VIRTUAL_ENV_DISABLE_PROMPT true
set -gx HOMEBREW_AUTO_UPDATE_SECS 86400

# Title options
set -g theme_title_display_process yes
set -g theme_title_display_path yes
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path yes

# Prompt options
set -g theme_display_virtualenv yes
set -g theme_display_vi yes
set -g theme_display_hostname yes
set -g theme_show_exit_status yes
set -g theme_git_worktree_support no
set -g theme_display_date yes
set -g theme_display_cmd_duration yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes

starship init fish | source
bind -M insert \cg forget
