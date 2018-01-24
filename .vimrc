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
Plugin 'scrooloose/nerdtree'
Plugin 'surround.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'easytags.vim'
Plugin 'xolox/vim-misc'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

" air-line
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'

"let g:airline_powerline_fonts = 1

"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif

imap <S-TAB> <C-O><<

set tabstop=4
set softtabstop=4
set shiftwidth=2
set expandtab
set autoindent
set fileformat=unix
set hlsearch
set showcmd
set number
set relativenumber
set backupdir=/Users/niyohn/.vim/tmp/backup//
set directory=/Users/niyohn/.vim/tmp/swp//

let g:syntastic_ruby_checkers = ['rubocop', 'rubylint']
au BufNewFile,BufRead *.rb
    \ set tabstop=2
    \     softtabstop=2
    \     shiftwidth=2
    \     textwidth=79
    \     expandtab
    \     autoindent
    \     fileformat=unix

let g:syntastic_c_checkers = ['gcc', 'cppcheck', 'make']
au BufNewFile,BufRead *.c
    \ set tabstop=2
    \     softtabstop=2
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
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let b:syntastic_skip_checks = 0

runtime macros/matchit.vim

for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

:imap jj <Esc>


inoremap <˙> <C-o>h
inoremap <∆> <C-o>j
inoremap <˚> <C-o>k
inoremap <¬> <C-o>l
nnoremap <C-c> :execute 'topleft' ((&columns - &textwidth) / 2 - 1) . 'vsplit_paddding_' \| wincmd p<CR>
