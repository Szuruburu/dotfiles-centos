" Szuruburu vimrc
" Last Update March 6 2019

set nocompatible
set fillchars+=vert:│

syntax on

" Vundle begins here; turn off filetype temporarily
" set the runtime path to include Vundle and initialize
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
" ------------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdtree-git-plugin'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'bling/vim-bufferline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-markdown'
" Plugin 'bronson/vim-trailing-whitespace'
Plugin 'leafgarland/typescript-vim'
Plugin 'jiangmiao/auto-pairs'

" JavaScript JSX React
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
" Plugin 'mattn/emmet-vim'
Plugin 'w0rp/ale'
Plugin 'Valloric/MatchTagAlways'
Plugin 'alvan/vim-closetag'
Plugin 'othree/html5.vim'

Plugin 'janko-m/vim-test'
Plugin 'alfredodeza/coveragepy.vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'yonchu/accelerated-smooth-scroll'

" AUTOCOMPLETE ENGINES
Plugin 'ervandew/supertab'
" Track the engine.
"Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Color schemes
"Plugin 'sainnhe/sonokai'
"Plugin 'flazz/vim-colorschemes'
"Plugin 'atelierbram/vim-colors_atelier-schemes'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

" set term=screen-256color
"colorscheme sonokai

set autoindent
set shiftwidth=4
set noexpandtab
set tabstop=4
set bg=dark
set backspace=indent,eol,start
set ignorecase
set incsearch
set laststatus=2
set linebreak
set nobackup
set noerrorbells
set nolist
set noswapfile
set novb
set nowrap
set number
set numberwidth=5
set ruler
set scrolloff=20
set showmatch
set shortmess=I
set showcmd
set showmode
set sidescroll=1
set sidescrolloff=7
set smartcase
set undolevels=1000
set nrformats-=octal
set vb
set splitbelow

" Disable screen flashing on error
set visualbell
set t_vb=

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger="<c-cr>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:user_emmet_settings = {
		\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}


let g:vim_jsx_pretty_colorful_config = 1
let g:syntastic_python_flake8_args = "--ignore=E501 --max-complexity 10"

"CtrlP
"let g:ctrlp_map = '<c-p>'
"
" air-line
let g:airline_powerline_fonts = 1

"Airline
let g:airline_theme='badwolf'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let test#python#runner = 'pytest'

"Gvim mods
set encoding=utf-8
set hidden
set history=100
set mouse=a
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=Lo

" NERDtree settings
" ==================
" Autostart NERDtree on Vim startup
" autocmd VimEnter * NERDTree



" Auto-close NERDtree on file opne
let NERDTreeQuitOnOpen = 1

"nerd-commenter settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Show bookmarks on Vim startup
let NERDTreeShowBookmarks=1

" Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Automatically delete the buffer of the file you just deleted with NerdTree
let NERDTreeAutoDeleteBuffer = 1

" Make it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Highlight tags
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
	\ 'js' : 1,
	\ 'jsx' : 1,
	\}

" More tags settings
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified
" files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified
" files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js'

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \}

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" Accelerated smooth scrolling
" Sleep time (msec) at <Cd> / <Cu>: Scroll will be faster if you decrease it
" Default: 10
let g:ac_smooth_scroll_du_sleep_time_msec =  6

" Sleep time (msec) at <Cf> / <Cb>: Scrolling will be faster if it is decreased
" Default: 10
let g:ac_smooth_scroll_fb_sleep_time_msec = 6

" To turn off only the acceleration function
let g:ac_smooth_scroll_enable_accelerating =  0

" Copy and paste to the system register
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+gP
imap <C-v> <ESC>"+pa

"NERDTree
map <C-o> :NERDTreeToggle<CR>

" Quick write session with F2
map <F5> :mksession! ~/vim_session <cr>
" And load session with F3
map <F9> :source ~/vim_session <cr>

" Insert new line below
nmap <M-d> o<Esc>
" Delete line without saving it in a register
nmap <M-S-d> "_dd

" Save with Ctrl+S
nmap <C-s> :w<CR>
imap <C-s> <Esc><Esc>:w<CR>

" Tabs navigation
nmap <silent> <S-k> :tabn<CR>
nmap <silent> <S-j> :tabp<CR>
nmap <M-q> <C-w>q
nmap <M-S-q> :qa!<CR>

nmap <silent> <leader>T : TestFile<CR>
nmap <silent> <leader>a : TestSuite<CR>
nmap <silent> <leader>l : TestLast<CR>
nmap <silent> <leader>v : TestVisit<CR>

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Splits Resizing
nmap <M-+> <C-w>+
nmap <M--> <C-w>-
nmap <M-<> <C-w><
nmap <M-.> <C-w>>
nmap <M-0> <C-w>=

" Soft Wrap
" nmap <M-1> :set wrap linebreak nolist<CR>
" Hard Wrap
" nmap <M-1> :set wm=2<CR>
" nmap <M-2> :set nowrap<CR>

noremap <silent> <M-1> :call ToggleWrapper()<CR>

function ToggleWrapper()
	if &wrap
		echo "Wrap OFF"
		setlocal nowrap
		set virtualedit=
		silent! unmap <buffer> j
		silent! unmap <buffer> k
		silent! unmap <buffer> 0
		silent! unmap <buffer> $
		silent! nunmap <buffer> <Up>
		silent! nunmap <buffer> <Down>
		silent! nunmap <buffer> <Home>
		silent! nunmap <buffer> <End>
		silent! iunmap <buffer> <Up>
		silent! iunmap <buffer> <Down>
		silent! iunmap <buffer> <Home>
		silent! iunmap <buffer> <End>
	else
		echo "Wrap ON"
		setlocal wrap linebreak nolist
		set virtualedit=
		setlocal display+=lastline
		map <buffer> <silent> j gj
		map <buffer> <silent> k gk
		map <buffer> <silent> 0 g0
		map <buffer> <silent> $ g$
		noremap  <buffer> <silent> <Up>   gk
		noremap  <buffer> <silent> <Down> gj
		noremap  <buffer> <silent> <Home> g<Home>
		noremap  <buffer> <silent> <End>  g<End>
		inoremap <buffer> <silent> <Up>   <C-o>gk
		inoremap <buffer> <silent> <Down> <C-o>gj
		inoremap <buffer> <silent> <Home> <C-o>g<Home>
		inoremap <buffer> <silent> <End>  <C-o>g<End>
	endif
endfunction


" Fix delete button
"inoremap ^? <c-h>
"cnoremap ^? <c-h>

" Remove all trailing whitespace by pressing F4
noremap <F4> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

inoremap jj <Esc>l

if has("gui_running")
set guifont=Source\ Code\ Pro\ Regular\ 9
set guioptions-=T
set guioptions-=e
set guioptions-=L
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
