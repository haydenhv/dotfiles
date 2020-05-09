function Shconfig()
	nnoremap <buffer> <localleader>s i#!/bin/sh<CR>#<CR># <++><CR># Created by Hayden Hamilton<CR>#<CR># haydenvh.com<CR># Copyright (c) <++> Hayden Hamilton<CR><CR>cache=${XDG_CACHE_HOME:=$HOME/.cache}<CR>config=${XDG_CONFIG_HOME:=$HOME/.config}<esc>
	nnoremap <buffer> <localleader>x :!chmod +x %<CR>
	nnoremap <buffer> <localleader>f i(){<CR><CR>}<esc>kk0i
	nnoremap <buffer> <localleader>$ i$()<esc>i
	nnoremap <buffer> <localleader>($ i$(())<esc>hi
	nnoremap <buffer> <localleader>$ca i$cache
	nnoremap <buffer> <localleader>$co i$config
	nnoremap <buffer> <localleader><space> i[[:space:]]<esc>
	nnoremap <buffer> <localleader><localleader><space> [[:space:]]
	iabbrev ccachedir cache=${XDG_CACHE_HOME:=$HOME/.cache}
	iabbrev cconfigdir cache=${XDG_CONFIG_HOME:=$HOME/.config}
endfunction

augroup autocmd
	"greet
	autocmd BufRead *.greet set syntax=greet
	"netrw
	autocmd FileType,WinEnter,BufEnter netrw call Configurenetrw()

	"Get rid of shitty indenting
	autocmd FileType html :normal gg=G

	"Nowrap
	autocmd FileType html :setlocal nowrap

	"C
	autocmd FileType c :noremap <buffer> <localleader>e $a;<esc>
	autocmd FileType c :inoremap <buffer> <localleader><localleader>e <esc>$a;<esc>

	"SH
	autocmd FileType sh :call Shconfig()
augroup END
