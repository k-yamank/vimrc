
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
nnoremap <silent><C-e> :NERDTreeToggle<CR>
if has('mouse')
	set mouse=a
endif
set whichwrap=b,s,h,l,<,>,[,]
set number
syntax on
colorscheme jellybeans
set t_Co=256
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : EscapeBraces()

let g:user_emmet_leader_key = '<C-E>'

inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap < <><LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap [ []<LEFT>

function! IndentBraces()
	let nowletter = getline(".")[col(".")-1]
	let beforeletter = getline(".")[col(".")-2]
	if nowletter == "}" && beforeletter == "{"
		return "\n\t\n\<UP>\<RIGHT>"
	else
		return "\n"
	endif
endfunction

inoremap <silent><expr><CR> pumvisible() ? neocomplcache#close_popup() : IndentBraces()

function! EscapeBraces()
	let nowletter = getline(".")[col(".")-1]
	if nowletter == ")" || nowletter == "\"" || nowletter == "'" || nowletter == ">" || nowletter == "]" || nowletter == "}"
		return "\<RIGHT>"
else
		return "\t"
	endif
endfunction

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
"
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
" NERDTreeを設定"
NeoBundle 'scrooloose/nerdtree' 
" NeoBundle 'Townk/vim-autoclose'
NeoBundle 'Shougo/neocomplcache'
""NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim'
" NeoBundle 'jiangmiao/simple-javascript-indenter'
NeoBundle 'mattn/emmet-vim'

call neobundle#end()

" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------


