"
" .bashrc
" Created by Hayden Hamilton
"
" haydenvh.com
" Copyright (c) 2019 Hayden Hamilton. LICENSE:GPLv2 ./licenses/gplv2.license
"

"VI-M not VI
set nocompatible

"Leader
let mapleader=","

"Tab completion
set path+=**
set wildmenu
set wildmode=longest,list,full

"Set colourscheme
syntax on
set background=dark
set relativenumber
set number
set hlsearch

autocmd BufWritePost config.h,config.def.h,dmenu.c !sudo make install clean
autocmd BufWritePost ~/.Xreources,~/.Xdefaults !xrdb -merge %
