set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/syntastic'
Plugin 'whatyouhide/vim-gotham'
Plugin 'itchyny/lightline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'yukpiz/vim-volt-syntax'
Plugin 'romainl/Apprentice'
Plugin 'tpope/vim-surround'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()
filetype plugin indent on
set number
set showmode
"set paste "cause Snipmate cant trigger snippets
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set wildmenu
set laststatus=2
set tw=80
set smartcase
set ignorecase

colorscheme molokai

let mapleader =","
" emmet
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_mode='a'    "enable all function in all mode.
" syntastyc
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers = ['javascript', 'js']
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" CTRLP
set wildignore+=*/vendor/*,app/storage/*,*.swp,*.zi,*.png,*.jpg
""""
" UtilSnip
"let g:UltiSnipsExpandTrigger="<TAB>"
"let g:UltiSnipsJumpForwardTrigger="<TAB>"
"let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
"let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips/']
" SnipMate
""""
"macros
noremap <Leader>f :!php-cs-fixer fix % --level="psr2"<CR>
map <C-t> :!php -l %<CR>
noremap <silent> <leader>t :!php -l %<CR>
noremap <silent> <leader>r :!php %<CR>
noremap <silent> <leader>y <C-z>,
nmap <Leader>ev :tabedit ~/.vimrc<CR>
nmap <C-f> :CtrlPBufTag<CR>
imap <C-l> <Esc>A;<Esc>
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
"Functions
function! FormatJson()
    %!python -m json.tool
endfunction
augroup autosourcing
   autocmd!
   autocmd BufWritePost .vimrc source %
augroup END
