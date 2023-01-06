syntax on
set number
set tabstop=4 softtabstop=4 shiftwidth=4
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.js,*.vue,*.gs,*.txt,*.hs,*.ts,*.scss,*.css,*.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.cpp,*.c                                           setlocal tabstop=8 softtabstop=8 shiftwidth=8
augroup END
set directory=~/.vim/swapfiles
set hidden
set nobackup
set wildignorecase binary 
set noeol
set autoindent smartindent
set expandtab
set wildmenu
set wildmode=list:longest
set wrapscan
set incsearch
set wrap
set showmatch
set showcmd
set showmode
set notitle
set scrolloff=10
set cursorline
set laststatus=2
set backspace=indent,eol,start
set termencoding=utf-8 
set encoding=utf-8
set fileencoding=utf-8

" command line editing without arrow keys
" see :h cmdline-editing
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

autocmd BufRead,BufNewFile *.gs setfiletype javascript
nmap <silent> <space>s :hi clear SpellBad \| hi SpellBad term=reverse cterm=bold,reverse ctermfg=167 ctermbg=236 gui=bold,reverse guifg=#fb4934 guibg=bg \| set spell spelllang=en_us<CR>

autocmd BufNewFile *.cpp 0r ~/programming/cpp/competitive/template.cpp

" expansion of the active file directory
cnoremap <expr> %% getcmdtype() == ':'?expand('%:h').'/':'%%'

" color theme
set nocompatible
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
call plug#end()
autocmd vimenter * ++nested colorscheme gruvbox
  let g:gruvbox_contrast_dark = 'soft'
set background=dark

hi clear SpellBad
hi SpellBad term=reverse cterm=bold,reverse ctermfg=167 ctermbg=236 gui=bold,reverse guifg=#fb4934 guibg=bg
set showcmd
set indentexpr=
set hlsearch
nnoremap <silent> <C-l> :nohlsearch \| set nospell<C-l><CR>
