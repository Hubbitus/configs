#!/bin/bash

# From https://github.com/Hubbitus/shell.scripts
. ~/bin/SHARED/time-diff.format

# By http://serverfault.com/a/151112/272920
function get_time_ms(){
    echo $(date +%s.%N | cut -b1-14)
}

# $1 that date if present, otherwise - now
function format_time(){
    date ${1+--date $1} +%X.%N | cut -b1-12
}

# Based on http://stackoverflow.com/a/1862762/307525, but refactored on milliseconds
function timer_start {
#    echo "timer=$timer; SHLVL=$SHLVL; BASH_SUBSHELL=$BASH_SUBSHELL"
    timer="${timer:-$( get_time_ms )}"
}

function timer_stop {
  export __err=$?
  time_stop=$(get_time_ms)
  timer_diff_s=$( bc -l <<< "$time_stop - $timer" )
  time_start=$timer
  unset timer
}

trap 'timer_start' DEBUG
PROMPT_COMMAND=timer_stop

# It will be cleared in MC due to the bug: https://www.midnight-commander.org/ticket/2027!!! @TODO recheck it.
# Intil that alias-workaround which should me run manually ONCE in mc subshell (timer_stop MUST be at end)
alias m='PROMPT_COMMAND="$PROMPT_COMMAND ; timer_stop"'

#PS1='[last: ${timer_diff_s}s][\w]$ '

# @TODO why Z (any symbol) required by not shown (possible unicode character in time diff)??
PS1='$SHLVL \[\e[1;30m\][\[\e[39m\]$( [ "\u" = "root" ] && echo -ne "\[\e[41m\]" || echo -ne "\[\e[36m\]" )\u\[\e[30m\]\[\e[49m\]@\[\e[34m\]\h\[\e[30m\]][\[\e[96m\]$(format_time_diff $(format_time @$time_start) $(format_time @$time_stop))(${timer_diff_s}s)Z\[\e[30m\]][\[\e[39m\]\w\[\e[30m\]]\[\e[39m\]$([ 0 -eq $__err ] && echo -e " \[\e[92m\]☻\[\e[39m\]" || echo -e " \[\e[41m\]${__err}\[\e[49m\]" ) \[\e[92m\]$\[\e[39m\]\[\e[49m\] '
