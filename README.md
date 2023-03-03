# vimrc

## Overview

This repository contains a helpful .vimrc configured for ease of use. It also contains some documentation (in the form of this readme) about setting up and using vim on various sytems.

## Installing vim

- Windows:
  - GVim (gvim90.exe) https://www.vim.org/download.php#pc
- MacOS:
  - MacVim from http://macvim-dev.github.io/macvim/ (latest binary release)
  - Use regular vim that comes with the system (or use `brew` to install a newer or different version)
- Linux:
  - Use regular vim that comes with the system (or use `apt` to install a newer or different version)

## .vimrc locations 

- Windows: _vimrc (see below for how to determine the full path)
- MacOS: ~/.vimrc
- Linux: ~/.vimrc

To determine the location of _vimrc on Windows, issue the following commands within vim:

```
:version
:echo $HOME
```

Copy the .vimrc file from this repository to the property location.

## Helpful command line invocations

The following command line invocations will allow you to open a new instance of vi with a particular file (`vi`) or open a file as a tab on an existing vim session (`vt`).

Windows:
```
doskey vi="C:\Path\To\vim90\gvim.exe" $* 
doskey vt="C:\Path\To\vim90\gvim.exe" --remote-silent-tab $* 
```

MacOS / Linux:
```
alias vi="/Applications/MacVim.app/Contents/bin/mvim"
alias vt="/Applications/MacVim.app/Contents/bin/mvim --remote-silent-tab"
```

## vim commands

```
remove ^M characters           :%s/^M//g      To make ^M, CTRL-V then CTRL-M

write file                     :w
quit                           :q
write and quit                 :wq
quit without saving changes    :q! 

edit existing file             :edit
edit file (horiz split)        :split
edit file (vert split)         :vsplit

create empty buffer            :enew
create empty buf (horiz split) :new
create empty buf (vert split)  :vnew

split current file (vertical)  ^wv
split current file (horiz)     ^ws
switch among split windows     ^ww

mark location for yanking      mk
copy from mark to here         y'k
cut from mark to here          d'k
yank (copy) current line       yy
paste                          p
delete (cut) current line      dd
delete (cut) current word      dw
delete (cut) current character x
delete word from cursor        dw
back, delete word from cursor  bdw
enter insert mode              i
remove next character          r
enter remove mode              R
undo                           u
redo                           ^r
copy into system clipboard     "*yy
paste from system clipboard    "*p
preface for system clipboard   "*

move forward one word          w
move backward one word         b
Move forward one paragraph     }
Move backward one paragraph    {

center screen on cursor        zz

find                           :/foo
find next                      n
global replace                 :%s/find/replace/g
unhighlight search results     :noh

open new tab                   :tabe
open current file in new tab   :tab sp
move to next tab               gt
move to prev tab               gT
move tab to position (or last) :tabm [ndx] 

go to previous location        ^o
go to next location            ^i
find tag (brings up dialog)    :tj
jump to tag for cur word       ^]
```

## Tags

### Installing tags

- Windows: https://github.com/universal-ctags
- MacOS: use `brew` to install universal-ctags
- Linux: use `apt` to install universal-ctags

Copy the .ctags file from this repository to your home directory.

### Generate tags for a source tree

Execute the following at the root of the source tree: `ctags -R -a tags .`

You probably want to do this instead to exclude some unhelpful directories: `ctags -R --exclude=.git --exclude=node_modules .`

### Using tags

In short, within vim, use the following:

```
find tag (brings up dialog)    :tj
jump to tag for cur word       ^]
```
