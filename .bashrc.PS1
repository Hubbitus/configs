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
#d  echo "timer_start before=$timer; SHLVL=$SHLVL; BASH_SUBSHELL=$BASH_SUBSHELL"
  timer="${timer:-$( get_time_ms )}"
#d  echo "timer_start after=$timer; SHLVL=$SHLVL; BASH_SUBSHELL=$BASH_SUBSHELL"
}

function timer_stop {
  export __err=$?

  time_stop=$(get_time_ms)
  timer_diff_s=$( bc -l <<< "$time_stop - $timer" )
  time_start=$timer

#d  echo 'called timer_stop:'
#d  printf "%#15s=%s\n" status ${__err}
#d  printf "%#15s=%s\n" timer $timer
#d  printf "%#15s=%s\n" time_start $time_start
#d  printf "%#15s=%s\n" timer_stop $time_stop
#d  printf "%#15s=%s\n" timer_diff_s $timer_diff_s

  unset timer
}

# It will be cleared in MC due to the bug: https://www.midnight-commander.org/ticket/2027!!! @TODO recheck it.
# Until that fixed alias-workaround which should be run manually ONCE in mc subshell (timer_stop MUST be at end)
#alias m='echo $PROMPT_COMMAND | grep -q timer_stop || PROMPT_COMMAND="${PROMPT_COMMAND:-:} ; timer_stop"'
# timer_stop must be at begining to catch exit status code and do not account teme of possible command in rest of PROMPT_COMMAND.
# But it also mean what if there other commands, timer_start will trigger again too. So, at end its clear required.
alias m='echo $PROMPT_COMMAND | grep -q timer_stop || PROMPT_COMMAND="timer_stop ; ${PROMPT_COMMAND:-:} ; unset timer"'

alias s=sleep

trap 'timer_start' DEBUG
#PROMPT_COMMAND=timer_stop
shopt -s expand_aliases
m

#PS1='[last: ${timer_diff_s}s][\w]$ '

# @TODO why Z (any symbol) required by not shown (possible unicode character in time diff)??
PS1='$SHLVL \[\e[1;30m\][\[\e[39m\]$( [ "\u" = "root" ] && echo -ne "\[\e[41m\]" || echo -ne "\[\e[36m\]" )\u\[\e[30m\]\[\e[49m\]@\[\e[34m\]\h\[\e[30m\]][\[\e[96m\]$(format_time_diff $(format_time @$time_start) $(format_time @$time_stop))(${timer_diff_s}s)Z\[\e[30m\]][\[\e[39m\]\w\[\e[30m\]]\[\e[39m\]$([ 0 -eq $__err ] && echo -e " \[\e[92m\]☻\[\e[39m\]" || echo -e " \[\e[41m\]${__err}\[\e[49m\]" ) \[\e[92m\]$\[\e[39m\]\[\e[49m\] '
