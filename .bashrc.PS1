#!/bin/bash

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
    timer="${timer:-$( get_time_ms )}"
}

function timer_stop {
  export __err=$?
  timer_stop=$(get_time_ms)
  timer_show=$( bc -l <<< "$timer_stop - $timer" )
  timer_start=$timer
  unset timer
}

trap 'timer_start' DEBUG
PROMPT_COMMAND=timer_stop

#PS1='[last: ${timer_show}s][\w]$ '

PS1='\[\e[1;30m[\[\e[39m$( [ "\u" = "root" ] && echo -ne "\[\e[41m" || echo -ne "\[\e[36m" )\u\[\e[30m\[\e[49m@\[\e[34m\]\h\[\e[30m][\[\e[96m$(format_time @${timer_start})-$(format_time @$timer_stop)(\[\e[4m${timer_show}s\[\e[24m)\[\e[39m\[\e[30m][\[\e[39m\w\[\e[30m]\[\e[39m$([ 0 -eq $__err ] && echo -e " \[\e[92m☻\[\e[39m" || echo -e " \[\e[41m${__err}\[\e[49m" ) \[\e[92m$\[\e[39m\[\e[49m '
