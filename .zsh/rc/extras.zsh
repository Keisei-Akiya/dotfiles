# Vim キーバインドを有効にする
bindkey -v
# Add "jj" shortcut to enter NOMAL mode
bindkey -M viins 'jj' vi-cmd-mode

autoload -U compinit; compinit # 自動補完を有効にする
setopt correct # 誤字を訂正する (正しい可能性のある候補を表示)
setopt correctall # 引数のスペルを修正
setopt hist_ignore_dups # 連続する同じコマンドはヒストリに保存しない
setopt share_history # ターミナル間でヒストリを共有する
setopt inc_append_history # 即座にヒストリに追加

# 入力したコマンドが存在せず，かつディレクトリ名と一致するなら，ディレクトリにcdする
setopt auto_cd

# history の設定
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# プラグイン設定
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

autoload -Uz compinit && compinit -u

# プロンプト
PROMPT="
%{${fg[magenta]}%}[%n@%m]%{${reset_color}%} %~
$ "

# uv
export PATH="$HOME/.local/bin:$PATH"
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

# homebrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# zsh-syntax-highlighting
source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# command line tools
eval "$(zoxide init zsh)"
