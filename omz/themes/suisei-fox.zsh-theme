# fox.zsh-theme

PROMPT='%{$FG[038]%}┌[%{$fg_bold[white]%}%n%{$reset_color%}%{$FG[039]%}@%{$fg_bold[white]%}%M%{$reset_color%}%{$FG[039]%}]%{$fg[white]%}-%{$FG[039]%}(%{$fg_bold[white]%}%~%{$reset_color%}%{$FG[039]%})$(git_prompt_info)
└> % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="-[%{$reset_color%}%{$fg[white]%}git://%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$FG[039]%}]-"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$FG[039]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
