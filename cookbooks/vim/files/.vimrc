"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/takehito/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/takehito/.vim/bundles')
  call dein#begin('/Users/takehito/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/takehito/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('mattn/emmet-vim')
  call dein#add('faith/go-vim')
  call dein#add('tpope/vim-fugitive')

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

" markdownの拡張子を.md,.mkd,.mkdnに対応させる
autocmd BufRead,BufNewFile *.md     set filetype=markdown

" ---

" 構文
syntax on

colorscheme default
set number
set ruler
set title
set backspace=2
set textwidth=0
set cursorline
" set colorcolumn=80
" ---

" インデント
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=0
set smartindent
set wrap
set linebreak
" ---

" 検索
set incsearch
set hlsearch
set wildmenu
" ---

" ステータス行
set laststatus=2
set cmdheight=1
set showcmd
" キーバインド
nnoremap <SPACE> <C-d>
nnoremap <S-SPACE> <C-u>

vnoremap <SPACE> <C-d>
vnoremap <S-SPACE> <C-u>

inoremap <C-n> <C-n>
" golang

if exists("g:did_load_filetypes")
  filetype off
  filetype plugin indent off
endif
set runtimepath+=$GOROOT/misc/vim " replace $GOROOT with the output of: go env GOROOT
filetype plugin indent on
syntax on

"--------------------------------------------------
"javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

