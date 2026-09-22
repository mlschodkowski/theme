[[ -n "$ZSH_VERSION" ]] || return 0

# Carbon prompt colors: blue for the path and prompt marker, red for failures.
typeset -g _CARBON_PROMPT_ACCENT=$'\e[38;2;69;137;255m'
typeset -g _CARBON_PROMPT_ERROR=$'\e[38;2;255;131;137m'
export ZSH_THEME_GIT_PROMPT_PREFIX=" %{${_CARBON_PROMPT_ACCENT}%}:: git(%{$reset_color%}"
export ZSH_THEME_GIT_PROMPT_SUFFIX="%{${_CARBON_PROMPT_ACCENT}%})%{$reset_color%}"

capture_last_status() { typeset -g LAST_STATUS=$?; }
add-zsh-hook precmd capture_last_status

error_info() {
    (( ${LAST_STATUS:-0} == 0 )) && return 0
    print -n " %{${_CARBON_PROMPT_ERROR}%}err(${LAST_STATUS})%{$reset_color%}"
}

export PROMPT='%~$(git_prompt_info)$(error_info) %{${_CARBON_PROMPT_ACCENT}%}>%{$reset_color%} '
