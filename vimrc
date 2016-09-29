"show line number befor each line.
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
" make backspace can delete autoindent
set bs=indent
set mouse=nv
set hls
set cursorline
set incsearch
set nocompatible
set ruler
set t_Co=256
set encoding=utf-8
set fileencoding=utf-8
syntax on
set laststatus=2   " Always show the statusline
set clipboard=unnamed "make unnamed register be the same as the "*register

" make vim could install vundle in fish shell
set shell=/bin/bash

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

"mapping
map <f9> :Tlist<CR>
map <f3> :let @+ = expand("%:p")<CR>
map <f2> :NERDTreeToggle<CR>

"make // could search the word which selected in visual mode
vnoremap // y/<C-R>"<CR>

"vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...
" my own
Bundle 'taglist.vim'
Bundle 'cscope.vim'
Bundle 'ctrlp.vim'
Bundle 'surround.vim'
Bundle 'snipMate'
Bundle 'Logcat-syntax-highlighter'
Bundle 'genoma/vim-less'
" extend the % function
Bundle 'matchit.zip'
" auto complete tag
Bundle 'ragtag.vim'
Bundle 'ap/vim-css-color'
Bundle 'ScrollColors'
Bundle 'tomasr/molokai'
Bundle 'scrooloose/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'bling/vim-airline'
Bundle 'sjl/badwolf'
" it's required for vim-jsx
Bundle 'pangloss/vim-javascript'
" it's for jsx syntax highlight
Bundle 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
"it's used for use ack in vim
Bundle 'mileszs/ack.vim'
"add nerdtree-execute
Bundle 'ivalkeen/nerdtree-execute'

colorscheme molokai

" configuration for airline

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set wildignore+=*/tmp/*,*.so,*.swp,*.zip "MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules\|\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" force myself to not to use the error keys
map <UP> <NOP>
map <DOWN> <NOP>
map <LEFT> <NOP>
map <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>
 
"config for make android project
autocmd BufRead *.java set efm=%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#
autocmd BufRead *.java set makeprg=ant\ 
autocmd BufRead *.java set tabstop=4
autocmd BufRead *.java set shiftwidth=4

autocmd BufRead *.html set tabstop=2
autocmd BufRead *.html set shiftwidth=2
autocmd BufRead *.css set tabstop=2
autocmd BufRead *.css set shiftwidth=2
autocmd BufRead *.less set tabstop=2
autocmd BufRead *.less set shiftwidth=2
autocmd BufRead *.js set tabstop=2
autocmd BufRead *.js set shiftwidth=2

