"---set vundle---'
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"------plugin------"
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-surround'
call vundle#end()


syntax enable
set number
set cursorline
set ruler
set shiftwidth=4
set tabstop=4
set ignorecase smartcase
set nowrapscan
set incsearch
set hlsearch
set backspace=indent,eol,start
set cmdheight=1
set foldenable
set foldmethod=manual
set mouse=a "enable mouse in all mode"
"set paste   "set paste mode"
set ttymouse=xterm2 "must have some use"
colorscheme molokai
syntax on
filetype plugin indent on


"-----------ultiSnip+YoucompleteMeSetting- "
let g:ycm_key_list_select_completion = ['<c-n>','<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>','<Up>']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="ß"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips/"
let g:UltiSnipsEditSplit="vertical"
"---set ultiSnipdirectories to find snippet"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippests/UltiSnips']
let g:UltiSnipsSnippetDir="~/.vim/myUltiSnips"
"-------Syntastic Setting------"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"-------YouCompleteMe Setting-----------"
let g:ycm_gloabl_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 2
let g:ycm_min_num_identifier_candidate_chars = 8
"cancel cache match, everytime start new "
let g:ycm_cache_omnifunc = 0 
let g:ycm_collect_identifiers_from_tags_file = 1
" set eclim enviroment "
let g:EclimCompletionMethod = 'omnifunc'

"set completeopt =longest, menu "
"set completion like normal IDE "
autocmd InsertLeave *if pumvisible() == 0|pclose|endif
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0

"-------Mapping---------"
let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"------SyntasticCheckToggle----"
nmap <F7> :SyntasticToggleMode<cr>
"----Tlist Toggle---"
nmap <F9> :TlistToggle<cr>
"-----NerdTree Toggle---"
nmap <F8> :NERDTreeToggle<cr>
"------Easy to edit vimrc file----"
nmap <leader>ev :tabedit $MYVIMRC<cr>
"------Highlight remove-------"
nmap <leader><space> :nohlsearch<cr>
 "mapping <alt-j/k> move line up/down"
nnoremap ∆ :m .+1<cr>== 
nnoremap ˚ :m .-2<cr>==

"Add closing braket when it type bracket"
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}


"----------Auto Commands------------"

"Automatic sourse .vimrc when save"
augroup autosourcing
		autocmd!
		autocmd BufWritePost .vimrc source %
	augroup END

"YoucompleteMe set Java engine to eclim"
"autocmd Filetype * runtime! autoload/eclim/<amatch>/complete.vim
"    \ | let s:cfunc = 'eclim#'.expand('<amatch>').'#complete#CodeComplete'
"	\ | if exists('*'.s:cfunc) | let &l:omnifunc=s:cfunc | endif
