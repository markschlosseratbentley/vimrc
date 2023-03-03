# vimrc

## Overview

This repository contains a helpful .vimrc configured for ease of use. It also contains some documentation (in the form of this readme) about setting up and using vim on various sytems.

## Installing vim

- Windows:
  - GVim (gvim90.exe) https://www.vim.org/download.php#pc
- MacOS:
  - MacVim from http://macvim-dev.github.io/macvim/ (latest binary release)
  - Or use regular 

## .vimrc locations 

- Windows: _vimrc (see below for how to determine the full path)
- MacOS: ~/.vimrc
- Linux: ~/.vimrc

To determine the location of _vimrc on Windows, issue the following commands within vim:

```
:version
:echo $HOME
```

## Helpful command line invocations

The following command line invocations will allow you to open a new instance of vi with a particular file (`vi`) or open a file as a tab on an existing vim session (`vt`).

Windows:
```
doskey vi="C:\Path\To\vim90\gvim.exe" $* 
doskey vt="C:\Path\To\vim90\gvim.exe" --remote-silent-tab $* 
```

MacOS / Linux:
```
alias vi="vim" 
alias vt="vim --remote-silent-tab" 
```
