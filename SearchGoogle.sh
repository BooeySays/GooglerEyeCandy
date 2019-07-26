#!/bin/bash

# FILE:	SearchGoogle.sh
# LANG:	Bourne Again Shell
# FUNC:	__drawboxb()
# DESC:	This is a BASH function version of SearchGoogle, which
#		is a Python script. Its purpose is for use with zsh.
#		I couldnt create a hotkey with the bind command in zsh
#		like I could in BASH, so instead, I will try to assign
#		one using zsl and bindkey, which binds functions

#BOXTL = '╭'
#BOXTR = '╮'
#BOXBR = '╯'
#BOXBL = '╰'
#BOXHORZ = '─'
#BOXVERT = '│'
#
__version__='0.2'


#def drawbox():
#	LID = COLUMNS - 2
#	BAR = COLUMNS - 18
#	print('\n\033[m' + BOXTL + BOXHORZ * LID + BOXTR + '\n\n' + BOXBL + BOXHORZ * LID + BOXBR)
#	searchq = input('\033[2A\r' + BOXVERT + '\033[01;38;5;32m Ｇ\033[38;5;160mｏ\033[38;5;215mｏ\033[38;5;32mｇ\033[38;5;34mｌ\033[38;5;160mｅ\033[38;5;15m：\033[m' + '\033[07m' + ' ' * BAR + '\033[m ' + BOXVERT + '\r' + BOXVERT + '\033[01;38;5;32m Ｇ\033[38;5;160mｏ\033[38;5;215mｏ\033[38;5;32mｇ\033[38;5;34mｌ\033[38;5;160mｅ\033[38;5;15m：\033[m' + '\033[07m ')
#	print('\033[m\n\n')
#	print('\033[01;38;5;51mThe search query is\033[38;5;15m: \033[m' + searchq + '\n\n')


function __drawboxb(){
	LID="$((COLUMNS - 2))"
	BAR="$((COLUMNS - 18))"
	printf '\n\033[m╭'
	printf '─%.s' $(seq 1 "$LID")
	printf '╮\n\n╰'
	printf '─%.s' $(seq 1 "$LID")
	printf '╯'
	echo -en "\033[1A\r│\033[01;38;5;32m Ｇ\033[38;5;160mｏ\033[38;5;215mｏ\033[38;5;32mｇ\033[38;5;34mｌ\033[38;5;160mｅ\033[38;5;15m：\033[m\033[07m"
	printf ' %.s' $(seq 1 "$BAR")
	echo -en "\033[m │\r│\033[01;38;5;32m Ｇ\033[38;5;160mｏ\033[38;5;215mｏ\033[38;5;32mｇ\033[38;5;34mｌ\033[38;5;160mｅ\033[38;5;15m：\033[m\033[07m "
	read -r searchq
	googler --colors BmcgxX -n 5 "$searchq"
	unset searchq
}

#	searchq = input('\033[2A\r' + '│' + '\033[01;38;5;32m Ｇ\033[38;5;160mｏ\033[38;5;215mｏ\033[38;5;32mｇ\033[38;5;34mｌ\033[38;5;160mｅ\033[38;5;15m：\033[m' + '\033[07m' + ' ' * BAR + '\033[m ' + '│' + '\r' + '│' + '\033[01;38;5;32m Ｇ\033[38;5;160mｏ\033[38;5;215mｏ\033[38;5;32mｇ\033[38;5;34mｌ\033[38;5;160mｅ\033[38;5;15m：\033[m' + '\033[07m ')
#	print('\033[m\n')
#	print('\033[m     Showing results for: "\033[01;38;5;51m' + searchq + '\033[m"')
#	os.system('
	


#drawboxb
