set nocompatible                                                        "We want the latest Vim settings/options

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start                                           "Make backspace behave like every other editor.
let mapleader = ','                                                      "The default leader is \, but a comma is much better
nmap <leader>w :w!<cr>
nmap <leader>x :q!<cr>
imap jj <esc>
set number                                                               "Let's activate line numbers
set noerrorbells visualbell t_vb=
set autowriteall                                                         "Automatic write file when switching
set complete=.,w,b,u                                                     "Set auto completion
set tabstop=2                                                            "When insertmode mode width
set expandtab                                                            "When insertmode mode width
set softtabstop=2                                                        "When insertmode mode width
set shiftwidth=2                                                         "When normal mode width
set ai 
set nowrap
#set smartindent
set smarttab
set cindent
set title
set encoding=utf-8
set ignorecase

"set list
"set listchars=tab:»\ ,eol:¬,trail:⋅,extends:›,precedes:‹
"set showbreak=↪

hi SpecialKey ctermfg=8
hi NonText ctermfg=8 guifg=gray

"-----------------Visuals--------------"
set t_CO=256                                                             "Use <t_CO> colors
" colorscheme atom-dark-256
set linespace=15                                                         "Set line-height
set guioptions-=e

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

hi LineNr guibg=bg

"-----------------Airline and Material Theme--------------"
set background=dark
"colorscheme hybrid_reverse
colorscheme hybrid_reverse
"colorscheme material-theme

let g:enable_bold_font = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_section_b = '%{strftime("%c")}%'
let g:airline_section_y = 'BN: %{bufnr("%")}%'
let g:airline_theme = "hybrid"
set laststatus=2

"-----------------Searching--------------"
set hlsearch
set incsearch


"-----------------Split Management--------------"
set splitbelow
set splitright


nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"-----------------Mappings---------------"

" Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

" Ctags mappings
nmap <Leader>f :tag<space>


"-----------------Plugins--------------------"

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:20,results:20'

" Search variables or tags
nmap <Leader>r :CtrlPBufTag<cr>
nmap <Leader>e :CtrlPMRUFiles<cr>

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

" Make NERDTree easier to toggle.
nmap <Leader>b :NERDTreeToggle<cr>

"/
"/ Greplace.vim
"/
set grepprg=ag             "Use Ag for search

let g:grep_cmd_opts = '--line-numbers --noheading'

"/
"/ vim-better-whitespace.vim
"/

autocmd BufEnter * EnableStripWhitespaceOnSave

"-----------------Source Files---------------"

" Automatically source the Vimrc file on save.
"augroup autosourcing
" autocmd!
" autocmd BufWritePost .vimrc source %
"augroup END



"-----------------Notes------------------"
" gt                                                                     "Switch tabs
" bd                                                                     "Buffer delete
" zz                                                                     "Make the cursor to center of the page
" ls                                                                     "List all buffers
" bp                                                                     "Go to previous buffer
" b{number}                                                              "Go to previous specific number buffer
" <ctr>w|                                                                "Expands to full area
" <ctr>wH                                                                "Expands to full area
" <ctr>w=                                                                "Normalize expand

" --------------VIM VINEGAR---------------------
" -                                                                      "Visit parent directory
" d                                                                      "Create directory
" D                                                                      "Delete directory/file
" %                                                                      "Create file

" --------------CTAGS---------------------
" tn                                                                     "Next tag
" tp                                                                     "Previous tag
" ts                                                                     "List matches tags
" <ctrl>]                                                                "Takes you to the method definition
" <ctrl>^                                                                "Takes you back to previous edit

" --------------AG---------------------
"  Ag 'keyword'                                                          "Ag search

" --------------Surround---------------------
" vit                                                                    "Select inside tag
" cs'"                                                                   "Change surround single quote to double quote
" ds'                                                                    "Delete surround single quote
" dst                                                                    "Delete surround tag
" cst<strong>                                                            "Change surround tag
" highlight<Shift-S><strong>                                             "Add tag to string

" --------------Surround---------------------
" mM "call using 'M"                                                     "Mark specific line
" mM "call using `M"                                                     "Mark specific line number
" mm "call using d'm"                                                    "Delete until marked line
" mm "call using v'm"                                                    "Select until marked line
" '0                                                                     "Back to last file worked

" --------------Surround---------------------
" vat                                                                    "Selet a tag
" dat                                                                    "Delete a tag


" Exclude CTags
" ctags -R --exclude=node_modules|vendor


