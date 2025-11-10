" line number
:set nu

" auto indent
:set ai

" cursor
:set cursorline

" show cursor position
:set ruler

" auto save enable
:set autowrite

" scroll the screen before 5 lines
:set scrolloff=5

" enable syntax 
:syntax on

" do not wrap a line when exceed screen width
:set nowrap

" enable mouse in normal and visual mode
:set mouse=nv

" use space when typing tab
:set expandtab

" tab width
:set tabstop=4

" indent width
:set shiftwidth=4

" highlight search
:set hlsearch

" search while typing
:set incsearch

:filetype on

" status line
":set laststatus=2
":set statusline=%f\ %l/%L\ %P

" insert mode bracket keymap
:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap ' ''<Esc>i
:inoremap " ""<Esc>i

