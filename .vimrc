
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set tabstop=4
nnoremap <silent><C-e> :NERDTreeToggle<CR>
if has('mouse')
	set mouse=a
endif
set whichwrap=b,s,h,l,<,>,[,]
set number
set cindent
syntax on
colorscheme jellybeans
set t_Co=256

let g:neocomplcache_enable_at_startup = 1
inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundle$B$G4IM}$9$k%G%#%l%/%H%j$r;XDj(B
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle$B<+BN$r(Bneobundle$B$G4IM}(B
NeoBundleFetch 'Shougo/neobundle.vim'
 
" $B:#8e$3$N$"$?$j$KDI2C$N%W%i%0%$%s$r$I$s$I$s=q$$$F9T$-$^$9!*!*(B"
" NERDTree$B$r@_Dj(B"
NeoBundle 'scrooloose/nerdtree' 
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim'
" NeoBundle 'jiangmiao/simple-javascript-indenter'

call neobundle#end()

" Required:
filetype plugin indent on
 
" $BL$%$%s%9%H!<%k$N%W%i%0%$%s$,$"$k>l9g!"%$%s%9%H!<%k$9$k$+$I$&$+$r?R$M$F$/$l$k$h$&$K$9$k@_Dj(B
" $BKh2sJ9$+$l$k$H<YKb$J>l9g$b$"$k$N$G!"$3$N@_Dj$OG$0U$G$9!#(B
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------


