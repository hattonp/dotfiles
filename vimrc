" call plug#begin()
" Plug 'leafgarland/typescript-vim'
" call plug#end()

" let g:typescript_indent_disable = 1

" Basic Setup
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set showcmd
set rtp+=$GOROOT/misc/vim
set splitbelow
set autoindent

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Press "Ctrl" + "h/j/k/l" to switch between windows
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
                                                                                
" show line starting at column 81
set colorcolumn=121

" allow extra time for syntax highlighting
set redrawtime=10000
