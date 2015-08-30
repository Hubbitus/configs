#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# http://habrahabr.ru/post/162339/
#Включить автодополнение 
autoload -U compinit promptinit 
compinit
promptinit
# Для pacman
[[ -a $(whence -p pacman-color) ]] && compdef _pacman pacman-color=pacman
# Корректировка ввода
setopt CORRECT_ALL
# Если в слове есть ошибка, предложить исправить её
SPROMPT="Ошибка! ввести %r вместо %R? ([Y]es/[N]o/[E]dit/[A]bort) "
# Не нужно всегда вводить cd
# просто наберите нужный каталог и окажитесь в нём
setopt autocd
# При совпадении первых букв слова вывести меню выбора
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}



# Aliases
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias -s {avi,mpeg,mpg,mov,m2v}=mplayer
alias -s {odt,doc,sxw,rtf}=openoffice.org
autoload -U pick-web-browser
alias -s {html,htm}=chromium



#  History
# хранить историю в указанном файле
export HISTFILE=~/.zsh_history
# максимальное число команд, хранимых в сеансе
export HISTSIZE=1000
export SAVEHIST=$HISTSIZE
# включить историю команд
setopt APPEND_HISTORY
# убрать повторяющиеся команды, пустые строки и пр.
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS



typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES=(
        'alias'           'fg=153,bold'
        'builtin'         'fg=153'
        'function'        'fg=166'
        'command'         'fg=153'
        'precommand'      'fg=153, underline'
        'hashed-commands' 'fg=153'
        'path'            'underline'
        'globbing'        'fg=166'
)

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
