" ---------------------------------------------------
" Vundle - init
" ---------------------------------------------------
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
Plugin 'tpope/vim-fugitive'		"github wrapper
Plugin 'scrooloose/nerdcommenter'
"Plugin 'blindFS/flattr.vim'		":colorscheme
"Plugin 'josuegaleas/jay'		":colorscheme
"Plugin 'crusoexia/vim-monokai'		":colorscheme monokai | js 8
"Plugin 'bluz71/vim-moonfly-colors'	":colorscheme moonfly | js 7
"Plugin 'mhartington/oceanic-next'	":colorscheme OceanicNext | js 8
Plugin 'rakr/vim-one'			":colorscheme one | js 9 clojure 9
"Plugin 'joshdick/onedark.vim'		":colorscheme onedark | js 8

Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fireplace'
Plugin 'venantius/vim-eastwood'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'moll/vim-node'
Plugin 'heavenshell/vim-jsdoc'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

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


" ---------------------------------------------------
" Vundle - end
" ---------------------------------------------------



silent! call pathogen#runtime_append_all_bundles()

syntax on
set background=dark
colorscheme one

set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
set autoindent
"set smartindent

filetype plugin indent on

set number

" -----------------------------------
" Syntastic - Init
" ----------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint', 'javascipt']
let g:syntastic_javascript_eslint_exe = 'yarn run lint --'
let g:syntastic_html_checkers = ['html']
let g:syntastic_json_checkers = ['json']
let g:syntastic_markdown_checkers = ['markdown']
let g:syntastic_typescript_checkers = ['typescript']
" -----------------------------------
" Syntastic - End
" ----------------------------------

" https://stackoverflow.com/questions/8753286/nerd-tree-enter-does-not-open-sub-dirs
let g:NERDTreeDirArrows=0

let g:javascript_plugin_jsdoc = 1

let g:jsx_ext_required = 0
