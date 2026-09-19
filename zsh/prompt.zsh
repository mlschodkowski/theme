# MLS prompt colors for the built-in robbyrussell prompt.
typeset -g _MLS_PROMPT_ACCENT=$'\e[38;2;201;164;112m'
export ZSH_THEME_GIT_PROMPT_PREFIX=" %{${_MLS_PROMPT_ACCENT}%}:: git(%{$reset_color%}"
export ZSH_THEME_GIT_PROMPT_SUFFIX="%{${_MLS_PROMPT_ACCENT}%})%{$reset_color%}"

capture_last_status() { typeset -g LAST_STATUS=$?; }
add-zsh-hook precmd capture_last_status
error_info() {
    (( ${LAST_STATUS:-0} == 0 )) && return 0
    local muted_red=$'\e[38;2;189;126;137m' reset=$'\e[0m'
    print -n " %{${muted_red}%}err(${LAST_STATUS})%{${reset}%}"
}
export PROMPT='%~$(git_prompt_info)$(error_info) %{${_MLS_PROMPT_ACCENT}%}>%{$reset_color%} '
