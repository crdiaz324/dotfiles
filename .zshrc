if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/cdiaz/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(asdf gitfast osx docker python tmux screen dirhistory kubectl)

source $ZSH/oh-my-zsh.sh

#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"
#jenv enable-plugin export >/dev/null
#jenv enable-plugin maven >/dev/null

export PATH="$HOME/.local/bin:$PATH"

# Seperate brew provided commands from macOS commands to prevent conflicts
PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"

alias grep="grep --color"
alias dev="cd /Users/cdiaz/Documents/Dev"
alias vi="nvim"
alias config='/usr/local/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME' 

mcd () {
    mkdir -p "$1"
    cd "$1" || exit
}

# Setting up FZF default commands
export FD_OPTIONS="-E .git -E node_modules --follow"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --no-mouse --multi'
export FZF_DEFAULT_COMMAND='git ls-files --cached --others --exclude-standard |fd --type f --type l --hidden $FD_OPTIONS'
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"
alias fzf="fzf --bind 'f1:execute(less -f {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort'"
alias fzfpre="fzf --preview 'head -100 {}'"

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="--sort --exact"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /Users/cdiaz/.config/broot/launcher/bash/br


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Enable Starship
eval "$(starship init zsh)"


#kcch() {
#  (
#    cd ~/.kube/ || exit 1
#    # shellcheck disable=SC2012
#    KUBE=$(ls kube-* | fzf)
#    [[ -n "$KUBE" ]] && ln -sf "$KUBE" config
#  )
#}

export KUBECONFIG=~/.kube/config


# pip is set to require virtualenvs.  
# This config is set in ~/Library/Application\ Support/pip/pip.conf
gpip(){
  PIP_REQUIRE_VIRTUALENV="0" pip3 "$@"
}


export HOMEBREW_GITHUB_API_TOKEN=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
