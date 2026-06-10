echo "Welcome to IZOS !"
# couleurs (ANSI standard)
#autoload -U colors && colors

# caractères Unicode TTY-safe
SEP_LEFT=""   # ⚠️ peut ne pas exister → fallback ci-dessous
SEP_RIGHT=""

# Fallback TTY garanti
SEP_L="▌"
SEP_R="▐"
ARROW="▶"
BRANCH="⎇"
CHECK="✓"
CROSS="✗"
DIR="📁"   # ❌ emoji → remplacé
DIR="⌂"

PROMPT='%{$fg[blue]%}'"$SEP_L"'%{$reset_color%} '
PROMPT+='%{$fg[cyan]%}%~%{$reset_color%} '
PROMPT+='%{$fg[blue]%}'"$SEP_R"' '
PROMPT+='%{$fg[green]%}'"$CHECK"'%{$reset_color%} '

RPROMPT='%{$fg[yellow]%}'"$ARROW"'%{$reset_color%}'

