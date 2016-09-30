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
set laststatus=2   " Always show the statusline
set clipboard=unnamed "make unnamed register be the same as the "*register

" make vim could install vundle in fish shell
set shell=/bin/bash

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    " mkdir autoload if not exist
    " if !isdirectory($HOME."/.vim/autoload")
    "     echo "Create autoload folder..."
    "     call mkdir($HOME.'/.vim/autoload', "p")
    " endif
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

"mapping
map <f9> :Tlist<CR>
map <f3> :let @+ = expand("%:p")<CR>
map <f2> :NERDTreeToggle<CR>

"make // could search the word which selected in visual mode
vnoremap // y/<C-R>"<CR>

call plug#begin('~/.vim/plugged')

" My Plug here:
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-easymotion'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
Plug 'L9'
Plug 'FuzzyFinder'
" ...
" my own
Plug 'taglist.vim'
Plug 'cscope.vim'
Plug 'ctrlp.vim'
Plug 'surround.vim'
Plug 'snipMate'
Plug 'Logcat-syntax-highlighter'
Plug 'genoma/vim-less'
" extend the % function
Plug 'matchit.zip'
" auto complete tag
Plug 'ragtag.vim'
Plug 'ap/vim-css-color'
Plug 'ScrollColors'
Plug 'tomasr/molokai'
Plug 'crusoexia/vim-monokai'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-airline'
Plug 'sjl/badwolf'
" it's required for vim-jsx
Plug 'pangloss/vim-javascript'
" it's for jsx syntax highlight
Plug 'mxw/vim-jsx'
"it's used for use ack in vim
Plug 'mileszs/ack.vim'
"add nerdtree-execute
Plug 'ivalkeen/nerdtree-execute'

" Add plugins to &runtimepath
call plug#end()

colorscheme monokai
" colorscheme molokai

" config for vim-jsx
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" configuration for airline

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

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

