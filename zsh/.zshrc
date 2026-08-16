# --- Old todo.txt CLI (commented out, replaced by todo-app) ---
# TODO_FILE="$HOME/todo.txt"
# touch "$TODO_FILE"
# 
# function t() {
#     if [[ $# -eq 0 ]]; then
#         if [[ -s "$TODO_FILE" ]]; then
#             echo -e "\033[1;34m--- ACTIVE TASKS ---\033[0m"
#             grep -v "^x" "$TODO_FILE" | sort | cat -n | awk '{
#                 gsub(/\(A\)/, "\033[1;31m(A)\033[0m");
#                 gsub(/\(B\)/, "\033[1;33m(B)\033[0m");
#                 gsub(/\(C\)/, "\033[1;32m(C)\033[0m");
#                 gsub(/\+[a-zA-Z0-9_-]+/, "\033[0;36m&\033[0m");
#                 gsub(/@[a-zA-Z0-9_-]+/, "\033[0;35m&\033[0m");
#                 gsub(/[0-9]{4}-[0-9]{2}-[0-9]{2}/, "\033[0;34m&\033[0m");
#                 print
#             }'
#         else
#             echo "No active tasks."
#         fi
#         return
#     fi
# 
#     if [[ "$1" == "x" ]]; then
#         shift
#         local input="$*"
#         if [[ -z "$input" ]]; then
#             echo "Error: You must specify a task to complete (e.g. 't x Buy Milk')"
#             return
#         fi
#         local clean_item="${input#"${input%%[![:space:]]*}"}"
#         local date_stamp=$(date "+%Y-%m-%d")
#         sed -i "s|^(\([A-Z]\)) \(.*$clean_item.*\)|x $date_stamp \2|; s|^\(.*$clean_item.*\)|x $date_stamp \1|" "$TODO_FILE"
#         echo -e "\033[0;32m✔ Completed:\033[0m $clean_item"
#     else
#         local input="$*"
#         local date_stamp=$(date "+%Y-%m-%d")
#         if [[ ! "$input" =~ [0-9]{4}-[0-9]{2}-[0-9]{2} ]]; then
#              echo "$date_stamp $input" >> "$TODO_FILE"
#         else
#              echo "$input" >> "$TODO_FILE"
#         fi
#         echo -e "\033[0;33m+ Added:\033[0m $input"
#     fi
# }
# function _todo_completion() {
#     if [[ "${words[2]}" == "x" ]]; then
#         local -a todos
#         todos=("${(@f)$(grep -v "^x" $TODO_FILE)}")
#         compadd -a todos
#     else
#         compadd "x"
#     fi
# }
# compdef _todo_completion t
# --- End old todo.txt CLI ---

# New todo-app CLI (SQLite-backed, with web Kanban)
source ~/.todo_zshrc

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=( 
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"



# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-01-18 17:09:42
export PATH="$PATH:/home/ujsquared/.local/bin"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:/home/ujsquared/Desktop/swww/target/release/swww"
export PATH="$PATH:/home/ujsquared/Desktop/swww/target/release/swww-daemon"
export JAVA_HOME=/opt/jdk-23
export PATH=$PATH:$JAVA_HOME/bin
export PATH="$HOME/.local/bin:$PATH"

export GPG_TTY=$(tty)



# pnpm
export PNPM_HOME="/home/ujsquared/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.zig:$PATH"
export OLLAMA_MODELS="/media/ujsquared/ssd crucial/"
export OLLAMA_MODELS="/media/ujsquared/ssd crucial/ollama"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ujsquared/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/ujsquared/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ujsquared/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/ujsquared/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"

bindkey '^r' atuin-search

# bind to the up key, which depends on terminal mode
bindkey '^[[A' atuin-up-search
bindkey '^[OA' atuin-up-search

# opencode
export PATH=/home/ujsquared/.opencode/bin:$PATH
alias pip='pip3'

# Gemini API keys
export GEMINI_API_KEY="YOUR_GEMINI_API_KEY_HERE"
export GOOGLE_API_KEY="YOUR_GOOGLE_API_KEY_HERE"

# Pi
export PATH="/home/ujsquared/.volta/tools/image/node/22.14.0/bin:$PATH"

# >>> grok installer >>>
export PATH="$HOME/.grok/bin:$PATH"
fpath=(~/.grok/completions/zsh $fpath)
autoload -Uz compinit && compinit -C
# <<< grok installer <<<


# Added by Antigravity CLI installer
export PATH="/home/ujsquared/.local/bin:$PATH"

# fastfetch on shell start (alacritty, ghostty, tmux panes, etc.)
fastfetch
