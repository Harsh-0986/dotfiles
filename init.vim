:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
call plug#begin()

Plug 'https://github.com/tpope/vim-surround' "Surrounding ysw)
Plug 'https://github.com/vim-airline/vim-airline' "Status Bar
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'tiagovla/tokyodark.nvim'
Plug 'https://github.com/neoclide/coc.nvim' "Auto-completion
"coc-html coc-eslint coc-emmet coc-tsserver coc-tailwind-intellisense
"coc-python coc-json coc-java coc-css coc-clangd coc-snippets coc-prettier
Plug 'alvan/vim-closetag'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'jiangmiao/auto-pairs'
Plug 'github/copilot.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'ternjs/tern_for_vim', {'do' : 'npm install'} "React autocompletion
"React snippets
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
"fzf
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tomlion/vim-solidity'


"Java
Plug 'artur-shaik/vim-javacomplete2'
"Python
Plug 'tmhedberg/SimpylFold'
Plug 'vim-python/python-syntax'
Plug 'nvie/vim-flake8'

"Gitlens
Plug 'APZelos/blamer.nvim'
call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-e> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='~'

set termguicolors

let g:airline_theme='simple'

let g:tokyodark_transparent_background = 1
let g:tokyodark_enable_italic_comment = 1
let g:tokyodark_enable_italic = 1
let g:tokyodark_color_gamma = "1.0"
colorscheme nord

let g:closetag_filenames="*.html,*.js,*.jsx,*.ts,*.tsx"

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

filetype plugin on
set omnifunc=syntaxcomplete#Complete

nnoremap <C-p> :Files<CR>

let NERDTreeShowHidden=1

let g:SimpylFold_docstring_preview=1
let g:python_highlight_all=1
syntax on

autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
