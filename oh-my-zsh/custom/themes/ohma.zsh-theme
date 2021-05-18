PROMPT="%(?:%F{green}➜%f :%F{red}➜%f )"
PROMPT+=' %B%F{white}%c%f%b $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{blue}⟨%f%b%F{red}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f "
ZSH_THEME_GIT_PROMPT_DIRTY="%f%B%F{blue}⟩%f%b %F{yellow}✗%f"
ZSH_THEME_GIT_PROMPT_CLEAN="%f%B%F{blue}⟩%f%b %F{green}✔︎%f"

PROMPT_EOL_MARK=''
