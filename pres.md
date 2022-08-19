%title: Jon's Favorite Command-Line Tips and Tricks
%author: jtgorman@illinois.edu
%date: 2022-08-17

🙿  Jon's Favorite Command-Line Tips and Tricks  🙾
===================================================

In this case - comamnd-line means bash w/ mostly defaults ;)

Slideshow is being run via `mdp pres.md`, which makes slides
out of markdown!

Git repo for pres: https://github.com/UIUCLibrary/jtg-cli-pres-2022-08-19


##Conventions: 

*filename*
`command -la input`
_keyboard press_

Know a better tool? Let me know as we go!

-----------------------------------------------------

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



🙿  Disabling terminal beep
=======================

The details of how to do this will vary with distro and terminal program...but
editing the */etc/inputrc* to set bell-stype to none

`set bell-style none`

Google is your friend here

Some programs will also have annoying sounds. Google can help too.

--------------------------------------------

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
    * >&   - `foo > some_file 2>&1`  writes both stdout and stderr to file
    * `tee` -` some command 

You can also send "stdout" and "stderr" into different places, including the
void known as "/dev/null"

`foo > some_file 2> /dev/null` 

--------------------------------------------------

🙿  Shell Expansion/Globbing
============================

Asterisk (*) will match any characters 

So `ls *txt` will list all the text file in the directory.

-----------------------------------------------------------------


🙿  head & tail

`head -n x`  - shows the first x lines of a file
`tail -n x`  - shows the last x lines of a file
`tail -n +5`  - show all lines of a file after the first five

------------------------------------------------------------------

🙿  grep
========

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
  
Actual use of grep recently - trying to remember what AD account I used in ldapsearch
`history | grep -oP "CN=[^']*'" | sort | uniq`

CN=lib-adinfo-ad-lookup,OU=Service Accounts,OU=Library,OU=Urbana,DC=ad,DC=uillinois,DC=edu'
CN=,lib-adinfo-lookup,OU=Service Accounts,,OU=Library,OU=Urbana,DC=ad,DC=uillinois,DC=edu'
CN=lib-adinfo-lookup,OU=Service Accounts,OU=Library,OU=Urbana,DC=ad,DC=uillinois,DC=edu'
CN=LibADLookup Service Account,OU=SU Accounts,OU=Library,OU=Urbana,DC=ad,DC=uillinois,DC=edu'

--------------------------------------------------

🙿  alias
=========

Stick in bottom of .bashrc/.bash_profile (depends on linx distro exactly.

Alias on left, actualc ommand to run

alias get="git"
alias jump-biling="ssh lib-feed-billing@batch-centos7.library.illinois.edu"

Remember to `source ~/.bashrc` afterwards!

--------------------------------------------------------

🙿  screen
==========

Keep a session going on a remote server, even if 
connection drops.

--------------------------------------------------

🙿  xclip
=========

Useful for taking command line input and putting it direction into


Sometimes can get confusing dpeending on where you're going to paste, you probably want primary (default) or clipoboard.

    * `perl -e 'print join('\n',(1.1000)) | xclip -sel clip`

xclip can also take in a text file

    * `xclip infile.txt`


--------------------------------------------------

🙿  find - cumbersome, but useful 
=================================

--------------------------------------------------

🙿  qrencode
============


`qrencode 'some_text_url_is_handy' -o filename.png`


--------------------------------------------------

🙿  cut and paste 
=================

Rearrange tabluar data via `cut` and `paste`


--------------------------------------------------

🙿  sshfs
=========

Mount remote directories to local file system via ssh


--------------------------------------------------
🙿  remember ssh can execute commands 
======================================

ssh server_conn_string "comamnd"

useful for pairing with commands like xclip


--------------------------------------------------

🙿   dig -x
============

reverse lookup by ip address

`dig +noall +answer -x 130.126.162.52`

52.162.126.130.in-addr.arpa. 5	IN	PTR	quest.library.illinois.edu.
52.162.126.130.in-addr.arpa. 5	IN	PTR	iisprod1.library.illinois.edu.
52.162.126.130.in-addr.arpa. 5	IN	PTR	s1.library.illinois.edu.
52.162.126.130.in-addr.arpa. 5	IN	PTR	www-s1.library.illinois.edu.
52.162.126.130.in-addr.arpa. 5	IN	PTR	web.library.illinois.edu.


--------------------------------------------------

🙿  Unicode Tools
=================

Emacs - has nice _Alt-x_, 'insert-char' and _Alt-x_, 'describe-char'

`xxd filename` when you absolutely need to know the raw bytes.

In Ubuntu terminal - _left ctl_ + _left shift_ + _u_

Enter in the unicode code point. Use only lower-case letters for the alpha characters.

------------------------------------------------------------


🙿  watch
==========

`watch -n x command`

Rerun the command every x seconds (w/o flag, think it's 2 seconds by default)


--------------------------------------------------


🙿  wget & curl

I tend to use `wget` to fetch files that I want on the file system

`wget https://www.gutenberg.org/files/23042/23042-0.txt`

It's also handy for mirroring websites, or slurping down parts of a website,
but you'll probaby have to experiment a bit with the flags
to get what you want.

`wget --mirror --convert-links --adjust-extension --page-requisites --level 1  https://www.gutenberg.org/ebooks/23042`

`curl` is a useful tool for checking headers, getting content, but it's a bit more complicated

to do the above in curl (since it's a text file)

`curl https://www.gutenberg.org/files/23042/23042-0.txt > tempest.txt`

Can be useful in some situations, like debugging a web server on the machine itself

`curl -D - https://www.gutenberg.org/files/23042/23042-0.txt` | less

Will dump the headers actually being returned at the top of the file and the body
of the reponse below it.

