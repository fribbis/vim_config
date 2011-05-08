filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set keymap=russian-jcukenwin                    " switching keyboard layout is Ctrl+6
set iminsert=0                                  " in insert and
set imsearch=0                                  " command modes

" mapping Ctrl+l to Ctrl+6
imap <C-l> <C-^>
cmap <C-l> <C-^>

"set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set nocompatible                                " use vim defaults
set encoding=utf8                               " set default coding to utf8
syntax on                                       " highlight syntax
let python_highlight_all=1
set backspace=indent,eol,start                  " or 2
set number                                      " show number lines
set tabstop=4                                   " tab is four spaces
set shiftwidth=4
set softtabstop=4                               " count of spaces when press Tab
set expandtab                                   " replacement tab by spaces
"set smarttab
"set autoindent                                 " always set autoindenting on
set smartindent                                 " smart indent
set ruler                                       " show a position of cursor in status line
set title                                       " change terminal's title
set mouse=a                                     " enable mouse
"set ignorecase                                 " ignore case in the time of searching
set smartcase
set confirm
set nobackup
"set noswapfile
set showcmd                                     " show incomplete commands in status line
set showmode
set wildmenu
set hidden                                      " switching between buffer without saving 
set scrolljump=4
set scrolloff=4                                 " keep 4 line in bottom for while scrolling
set incsearch                                   " do incremental searching
set hlsearch                                    " highlight searches
set visualbell                                  " don't beep
set wrap                                        " wrap lines
set cursorline
set laststatus=1                                " 3 mode (0,1,2)
set mousehide                                   " hide cursor for while typing
set showmatch
set nolist                                      "don't show noprinting character

if has("gui_running")
    set t_Co=256
    set lines=57 columns=100
    "colorscheme liquidcarbon
    set background=dark
    colorscheme liquidcarbon
    " Red cursor - russian keyboard layout
    highlight lCursor guifg=NONE guibg=Red
    set guioptions=aceigt                       " :help guioptions
    set go-=f
    set go-=m
    set go-=T
endif

" previous buffer
map <F2> :bp<CR>
imap <F2> <ESC>:bp<CR>

" next buffer
map <F3> :bn<CR>
imap <F3> <ESC>:bn<CR>

map <F5> :w<CR>:!python %<CR>

"saving files with root access rights
cmap w!! w !sudo tee % >/dev/null

"map й q
"map Й Q
"map ц w
"map Ц W
"map у e
"map У E
"map к r
"map К R
"map е t
"map Е T
"map н y
"map Н Y
"map г u
"map Г U
"map ш i
"map Ш I
"map щ o
"map Щ O
"map з p
"map З P
"map х [
"map Х {
"map ъ ]
"map Ъ }
"map ф a
"map Ф A
"map ы s
"map Ы S
"map в d
"map В D
"map а f
"map А F
"map п g
"map П G
"map р h
"map Р H
"map о j
"map О J
"map л k
"map Л K
"map д l
"map Д L
"map ж ;
"map Ж :
"map э '
"map Э "
"map я z
"map Я Z
"map ч x
"map Ч X
"map с c
"map С C
"map м v
"map М V
"map и b
"map И B
"map т n
"map Т N
"map ь m
"map Ь M
"map б ,
"map Б <
"map ю .
"map Ю >
"map ё `
"map Ё ~
