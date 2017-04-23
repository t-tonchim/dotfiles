
" encoding
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp
set encoding     =utf-8
scriptencoding utf-8
set ambiwidth=double
set noswapfile

" indent
set expandtab " tab replace whitespace
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2

" show whitespace
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲

augroup HighligntTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

" search
set incsearch
set ignorecase
set smartcase
set hlsearch
set wildignore+=*/tmp/*,*/cache/*,*.so,*.swp,*.rej,*/.svn/*,*.jpg,*.png

" cursor
set whichwrap=b,s,h,l,<,>,[,],~
set number
nnoremap j gj
nnoremap k gk
set backspace=indent,eol,start "enable backspace
set scrolloff=8

" jump
set showmatch "show match ( { [ etc..
source $VIMRUNTIME/macros/matchit.vim "extention % jump

" help command
set wildmenu
set history=100

" syntax
syntax on
set synmaxcol =200

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

if !isdirectory(expand("~/.vim/repos/github.com/Shougo/dein.vim"))
  echo "install dein..."
  :call system("curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh")
  :call system(" sh ~/installer.sh ~/.vim && rm ~/installer.sh")
endif

" Required:
set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/')
  call dein#begin('~/.vim/')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/repos/github.com/Shougo/dein.vim')

  call dein#load_toml('~/.vim/plugin.toml')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')


  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

""" plugins

" neocomplete
source ~/.neocompleteconf.vim

" vim-lithtline
set laststatus=2
set showtabline=2
set t_Co=256

set tags+=.svn/tags
set tags+=.git/tags

" set Filetype
au BufRead,BufNewFile *.jsx set filetype=javascript.jsx

" snippet
let g:neosnippet#snippets_directory='~/.vim/snippets/'

" keybind
let mapleader = "\<Space>"
inoremap <silent>jj <ESC>
autocmd FileType javascript.jsx,eruby,tpl,html,css,scss imap <buffer><expr><tab>
    \ emmet#isExpandable() ? "\<plug>(emmet-expand-abbr)" :
    \ "\<tab>"

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
