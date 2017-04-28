set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mikewest/vimroom'
Plugin 'Syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-ruby/vim-ruby'
Bundle 'Solarized'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

imap <S-TAB> <C-O><<

set tabstop=4
set softtabstop=4
set shiftwidth=2
set expandtab
set autoindent
set fileformat=unix
set hlsearch

let g:syntastic_ruby_checkers = ['rubocop', 'rubylint']
au BufNewFile,BufRead *.rb
    \ set tabstop=2
    \     softtabstop=2
    \     shiftwidth=2
    \     textwidth=79
    \     expandtab
    \     autoindent
    \     fileformat=unix

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \     softtabstop=4
    \     shiftwidth=4
    \     textwidth=79
    \     expandtab
    \     autoindent
    \     fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \     tabstop=2
    \     softtabstop=2
    \     shiftwidth=2

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

runtime macros/matchit.vim
