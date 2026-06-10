set_prompt() {
    if [ "$USE_COLOR" -eq 1 ]; then
        # Root = rouge + #

        if [ "$(id -u)" -eq 0 ]; then
            PS1="${RED}\u@\h${RESET}:${BLUE}\w${RESET}${YELLOW} # ${RESET}"
        else
            # User normal = vert + $
            PS1="${GREEN}\u@\h${RESET}:${BLUE}\w${RESET}${YELLOW} $ ${RESET}"
        fi
    else
        # Sans couleurs
        if [ "$(id -u)" -eq 0 ]; then
            PS1="\u@\h:\w # "
        else
            PS1="\u@\h:\w $ "
        fi
    fi
}

set_prompt
export PS1
