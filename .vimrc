" URL: idealmedia.mx
" Project URL: https://gist.github.com/Capicuaman/d8cd5cf6c1df70e249add3d4e3d1ab40
" Author: Rodolfo Rivera
" Description: A delicious, enticing and fragrant .vimrc based on http://vim.wikia.com/wiki/Example_vimrc
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Features
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" no vim user should have to live without.

"clipboard
set clipboard=unnamedplus
 
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" incremental search
set incsearch
" highlighting matching search terms
" set hlsearch

" set ic means case-insensitive search noic meanse case-insensitive
set noic 

" set the mouse to work in the console
" set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
 
" Enable syntax highlighting
syntax on
 
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Escape Sequences
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faster than jj
"
:imap jk <esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Insert Sequences
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" i to enter insert mode i-i  
:imap ii <esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer navigation plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   lusty Juggler
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File navigation plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"   nerdtree
"
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
"set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
 
" Better command-line completion
"set wildmenu
 
" Show partial commands in the last line of the screen
"set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
"set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
"set nomodeline
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Usability options 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display line numbers on the left
set number
set relativenumber 

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation options 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab


 
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
inoremap { {}<Esc>i     
"------------------------------------------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>



