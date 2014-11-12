ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}[%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}☿☿☿"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}☿☿☿"

local whoami="%{$fg_bold[green]%}%n%{$reset_color%}@%{$fg_bold[magenta]%}%m%{$reset_color%}"
local whereami=":%{$fg_bold[cyan]%}%~%{$reset_color%}"
local git_branch="\$(git_prompt_info)"

PROMPT="${whoami}${whereami} ${git_branch} >> "
RPROMPT='%{$fg[yellow]%}[%*]%{$reset_color%}'
