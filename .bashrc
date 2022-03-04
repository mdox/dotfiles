#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\t \w\n\$ '

[[ -f ~/.aliasrc ]] && . ~/.aliasrc

