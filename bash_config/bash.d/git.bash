source /usr/share/git/completion/git-prompt.sh
source /usr/share/git/completion/git-completion.bash

### PS1 Settings
_GIT_PROMPT="${YELLOW}\$(__git_ps1 \"(%s)\")"
_LOCAL_PROMPT="${GREEN}\u${WHITE}@${BOLD}${GREEN}\h:${BOLD}${CYAN}\W${BOLD}${WHITE}"
PS1="${_GIT_PROMPT}${_LOCAL_PROMPT}${CLEAR}\\$ "
