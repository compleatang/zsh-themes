ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}☿☿☿"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}☿☿☿☿☿"

local whoami="%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[green]%}%m%{$reset_color%}"
local whereami="in %{$fg_bold[blue]%}%~%{$reset_color%}"
local git_branch="on \$(git_prompt_info)"
local rvm_ruby="%{$reset_color%}using %{$fg[cyan]%}\$(~/.rvm/bin/rvm-prompt i v)%{$reset_color%}"

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

PROMPT="%(?, ,%{$fg[red]%}FAIL: $?%{$reset_color%}
)
${whoami} ${whereami} ${rvm_ruby} ${git_branch}
%_$(prompt_char) "

RPROMPT='%{$fg_bold[blue]%}[%*]%{$reset_color%}'
