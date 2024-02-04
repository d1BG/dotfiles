# fox.zsh-theme

PROMPT='%{$FG[090]%}┌[%{$fg_bold[white]%}%n%{$reset_color%}%{$FG[090]%}@%{$fg_bold[white]%}%M%{$reset_color%}%{$FG[090]%}]%{$fg[white]%}-%{$FG[090]%}(%{$fg_bold[white]%}%~%{$reset_color%}%{$FG[090]%})$(git_prompt_info)
└> % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="-[%{$reset_color%}%{$fg[white]%}git://%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$FG[090]%}]-"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$FG[090]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
