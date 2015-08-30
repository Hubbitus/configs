# Setup fzf
# ---------
if [[ ! "$PATH" =~ "/home/pasha/temp/fzf/bin" ]]; then
  export PATH="$PATH:/home/pasha/temp/fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" =~ "/home/pasha/temp/fzf/man" && -d "/home/pasha/temp/fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/pasha/temp/fzf/man"
fi

# Auto-completion
# ---------------
[[ $- =~ i ]] && source "/home/pasha/temp/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/pasha/temp/fzf/shell/key-bindings.zsh"

