set paste
set number
set shiftwidth=2
set tabstop=2
set encoding=utf-8
set cursorline
set updatetime=100
set expandtab
autocmd BufWritePre * :%s/\s\+$//ge
autocmd BufWritePre * :%s/\t/  /ge

scriptencoding utf-8
let g:python_host_prog=$PYENV_ROOT.'/versions/neovim-2/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/neovim-3/bin/python'
let g:gitgutter_highlight_lines = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
		\ '0': '0 ',
		\ '1': '1 ',
		\ '2': '2 ',
		\ '3': '3 ',
		\ '4': '4 ',
		\ '5': '5 ',
		\ '6': '6 ',
		\ '7': '7 ',
		\ '8': '8 ',
		\ '9': '9 '
		\}
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab<Paste>

let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']


" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
colorscheme tender
" set airline theme
let g:airline_theme = 'tender'
let macvim_skip_colorscheme=1

let g:elixir_docpreview=1
let g:elixir_showerror=1

" ---------- 'osyo-manga/vim-over' ----------
" 全体置換
nnoremap <silent> <Space>o :OverCommandLine<CR>%s//g<Left><Left>

" 選択範囲置換
vnoremap <silent> <Space>o :OverCommandLine<CR>s//g<Left><Left>

" カーソルしたの単語置換
nnoremap sub :OverCommandLine<CR>%s/<C-r><C-w>//g<Left><Left>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

Plugin 'shougo/denite.nvim'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'justinmk/vim-dirvish'
Plugin 'kassio/neoterm'
Plugin 'elixir-lang/vim-elixir'
Plugin 'pangloss/vim-javascript'
Plugin 'simeji/winresizer'
Plugin 'jacoborus/tender.vim'
Plugin 'osyo-manga/vim-over'

let g:deoplete#enable_at_startup = 1

