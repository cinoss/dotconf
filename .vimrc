" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nnoremap <F2> :NERDTreeToggle<CR>

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'flazz/vim-colorschemes'

Plug 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlF'

Plug 'bling/vim-airline'

Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='deus'

Plug 'scrooloose/nerdcommenter'
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1

Plug 'easymotion/vim-easymotion'

Plug 'chriskempson/base16-vim'
let base16colorspace=256
" colorscheme base16-tomorrow-night

Plug 'scrooloose/syntastic'

Plug 'tpope/vim-surround'

" Display
Plug 'nathanaelkane/vim-indent-guides'
IndentGuidesEnable
set background=dark
set ts=4 sw=4 et
let g:indent_guides_start_level  = 2
let g:indent_guides_guide_size = 1

Plug 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<CR>
let g:gundo_right = 1

Plug 'kien/rainbow_parentheses.vim'
RainbowParenthesesActivate

Plug 'ap/vim-css-color'
Plug 'w0ng/vim-hybrid'
colorscheme hybrid
Plug 'gregsexton/matchtag'

" Language

Plug 'derekwyatt/vim-scala'

" Commands
Plug 'terryma/vim-multiple-cursors'
Plug 'ntpeters/vim-better-whitespace'
ToggleStripWhitespaceOnSave

" Initialize plugin system
call plug#end()

set number
set relativenumber

let mapleader = ","
let g:mapleader = ","

