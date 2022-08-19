%title: Jon's Favorite Command-Line Tips and Tricks
%author: jtgorman
%date: 2022-08-17

🙿  Jon's Favorite Command-Line Tips and Tricks  🙾
===================================================

In this case - comamnd-line means bash w/ mostly defaults ;)

Slideshow is being run via `wpm pres.md`, which makes slides
out of markdown!

Git repo for pres: https://github.com/UIUCLibrary/jtg-cli-pres-2022-08-19


##Conventions: 

*filename*
`command -la input`
_keyboard press_

Know a better tool? Let me know as we go!

-----------------------------------------------------

🙿  Disabling terminal beep
=======================

The details of how to do this will vary with distro and terminal program...but
editing the */etc/inputrc* to set bell-stype to none

`set bell-style none`

Google is your friend here

Some programs will also have annoying sounds. Google can help too.



---------------------------------------------------

🙿  Resources
=========


## Command Line Fu - https://www.commandlinefu.com/commands/browse

  Fun snippets of command lines with descriptions. Be sure to check
  out https://www.commandlinefu.com/commands/browse/sort-by-votes.


## UNIX Power Tools, 3rd Edition - https://learning.oreilly.com/library/view/unix-power-tools/0596003307/ 

  Older, but chock-full of goodies.


## Linux Documentation Project - https://tldp.org/guides.html

  Used to be great, but pretty stale. Still, has 
  good resources on certain subjects. 
  
  The few times I have to deal with a bash script, I'll
  reference "Advanced Bash-Scripting Guide" https://tldp.org/LDP/abs/html/

-----------------------------------------------------


🙿  Getting help
================

    * `man command`  - manual page
    * `info command` - info pages
    * "World Wide Web" - kids seem to like it these days

You might see older resources talk about `apropos`, which searches descriptions 
but I'd only recommend that in cases you don't have net access

----------------------------------------------------------

🙿  Command Navigation
==================

| Tab                | autocomplete             |
| Control left/right | one "word" left or right |
| Control-a          | start of line            |
| Control-e          | end of line              |
| Control-l          | clear screen             |

--------------------------------------------------

🙿  Filesystem Navigation
=====================

## Shortcuts

| ~  | Your home directory |
| .  | Current directory   |
| .. | Parent directory    |

## Commands

| `ls`         | list files in current working directory |
| `cd path`    | classic change directory      |
| `pushd path` | like cd, but keeps track      |
| `popd`       | go back to previous directory |                        


--------------------------------------------------

🙿  Previous commands & History
===========================

Pipes and Redirects
-------------------
    * |    - send output to another command, `date | rev` will print something like "2202 TDC 25:91:51 81 guA uhT"
    * >    - `foo > some_file.txt`   writes stdout to file, clobbering file that exists 
    * >>   - `foo >> some_file.txt`  appends stdout to file
    * &>   - `foo > some_file 2>&1`  writes both stdout and stderr to file
    * `tee` -` some command 

You can also send "stdout" and "stderr" into different places, including the
void known as "/dev/null"

`foo > some_file 2> /dev/null` 

--------------------------------------------------

🙿  grep
====

search lines of files or from pipe

Useful flags to know

Example usage:

`grep -P 'some needle' *`


## -P

  Use perl regular expressions instead of the less common ?posix? 
  one used by grep

## -v

  Inverse, show lines that do NOT match the pattern
  
## -o
  
  Only return match, not the whole line it occurs in



--------------------------------------------------

tee
===

Have your cake and eat it too

`some command | tee -a my_output_file.txt`

Will show output to both the terminal and put the contents to output file. -a appends instead of replacing.

----------------------------------------------------

Shell Expansion/Globbing
------------------------

Asterisk (*) will match any characters 

So 

`ls *txt` will list all the text file in the directory.

-----------------------------------------------------------------

-> alias <-

Stick in bottom of .bashrc/.bash_profile (depends on linx distro exactly.

Alias on left, actualc ommand to run

alias get="git"
alias jump-biling="ssh lib-feed-billing@batch-centos7.library.illinois.edu"

Remember to `source ~/.bashrc` afterwards!


-> screen <-

Keep a session going on a remote server, even if 
connection drops.

--------------------------------------------------

-> xclip <-

Useful for taking command line input and putting it direction into


Sometimes can get confusing dpeending on where you're going to paste, you probably want primary (default) or clipoboard.

    * `perl -e 'print join('\n',(1.1000)) | xclip -sel clip`

xclip can also take in a text file

    * `xclip infile.txt`


--------------------------------------------------

-> find - cumbersome, but useful <-

--------------------------------------------------

-> qrencode <-


![qr barcode](library.png)


--------------------------------------------------


-> cut and paste <-

--------------------------------------------------
-> sshfs <-


--------------------------------------------------
-> tip - remember ssh can execute commands <-

ssh server_conn_string "comamnd"

useful for pairing with commands like xclip


--------------------------------------------------
# dig -x

reverse lookup by ip address

`dig +noall +answer -x 130.126.162.52`

52.162.126.130.in-addr.arpa. 5	IN	PTR	quest.library.illinois.edu.
52.162.126.130.in-addr.arpa. 5	IN	PTR	iisprod1.library.illinois.edu.
52.162.126.130.in-addr.arpa. 5	IN	PTR	s1.library.illinois.edu.
52.162.126.130.in-addr.arpa. 5	IN	PTR	www-s1.library.illinois.edu.
52.162.126.130.in-addr.arpa. 5	IN	PTR	web.library.illinois.edu.


--------------------------------------------------

Unicode Tools
=============

Emacs - has nice _Alt-x_, 'insert-char' and _Alt-x_, 'describe-char'

`xxd filename` when you absolutely need to know the raw bytes.

In Ubuntu terminal - _left ctl_ + _left shift_ + _u_

Enter in the unicode code point. Use only lower-case letters for the alpha characters.



--------------------------------------------------
-> For Fun <-
festival - comamnd line line tool for text to speech


