if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        git
        zsh-syntax-highlighting
        zsh-autosuggestions
        fzf
        zsh-completions
        colored-man-pages
        #zsh-dircolors
    )
autoload -U compinit && compinit //override comp

source $ZSH/oh-my-zsh.sh
#source ~/.zsh/zsh-dircolors/zsh-dircolors.plugin.zsh

#then edit ~/.zsh file.
source $HOME/.oh-my-zsh/custom/plugins/fzf-tab-completion/zsh/fzf-zsh-completion.sh

zstyle ':completion:*:*:aws' fzf-search-display true
# or for everything
zstyle ':completion:*' fzf-search-display true

# Example aliases
alias zshconfig="vim ~/.zshrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /home/iwan/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=/home/iwan/Programs/omnetpp-5.6.2/bin:$PATH
