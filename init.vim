:set number
:set relativenumber
:set smarttab
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set softtabstop=-1
:set mouse=a
:set encoding=utf-8

let g:mapleader=" "

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'tomtom/tcomment_vim'
Plug 'https://github.com/mg979/vim-visual-multi'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'rebelot/kanagawa.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'townk/vim-autoclose'

call plug#end()

set background=dark
colorscheme kanagawa

let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
set scrolloff=5

nnoremap <silent><leader>t :SyntasticToggleMode \| :below split \| terminal <CR> :resize -7 <CR>A
tnoremap <leader>t <C-\><C-n> \| :q<CR> \| :SyntasticToggleMode \| :SyntasticCheck <CR>


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <C-p> :TagbarToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


inoremap <silent><expr><Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"

tnoremap <Esc> <C-\><C-n>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_flake8_post_args="--max-line-length=150"


" MARKDOWN "

let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
" let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_mermaid = 1
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_autoscroll = 0
let g:instant_markdown_port = 8900
let g:instant_markdown_python = 1

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nmap <space>li <plug>(vimtex-info)
nmap <space>lv <plug>(vimtex-view)
nmap <space>ll <plug>(vimtex-compile)
