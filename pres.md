%title: Jon's Favorite Command-Line Tips and Tricks
%author: jtgorman
%date: 2022-08-17

-> Jon's Favorite Commmand-Line Tips and Tricks <-
==================================================

-----------------------------------------------------

-> Disable terminal beep <-
Disabling terminal beep
=======================

The details of how to do this will vary with distro and terminal program...but
editing the /etc/inputrc to set bell-stype to none

set bell-style none


-----------------------------------------------------



-> Navigation <-
Navigation
----------

Navigation (assuming bash defults, which is vi controls)

| Tab                | autocomplete             |
| Control left/right | one "word" left or right |
| Control-a          | start of command         |
| Control-z          | end of line              |
| Control-l          | clear screen             |
| up arrow           | previous command         |
| down arrow         | next command             |

--------------------------------------------------

-> Previous comands & History <-

_control-r_ will let you start to search history by typing
_control-p_ pastes last command into the terminal, but doesn't execute

`history` command will show history

Can rerun a command via `!n` where n is the line number listed in the history command.

--------------------------------------------------

-> Pipes and Redirects

    * command 1 | command 2
    * foo > some_file.txt (writes)
    * foo >> some_file.txt (appends)
    * foo > some_file


--------------------------------------------------

-> tee <-

Have your cake and eat it too

`some command | tee -a my_output_file.txt`

Will show output to both the terminal and put the cotents to output file. -a appends instead of replacing.

----------------------------------------------------

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

--------------------------------------------------

-> cut and paste <-

--------------------------------------------------
-> sshfs <-


--------------------------------------------------
-> tip - remember ssh can execute commands <-

ssh server_conn_string "comamnd"

useful for pairing with commands like xclip






