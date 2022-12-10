" Basics
set number
set title
set titleold=st
set noruler
set laststatus=2
set nospell
set background=dark

if &term =~ '256color' 
set t_ut=
endif

" Colorscheme
colorscheme slate 
syntax enable

" Rebind Escape to Capslock
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Save undos to a file                                                                                 
set undofile                                                                                           
set undodir=$HOME/.vim/undo                                                                            
"set undolevels=1000 " Already set by default, so not needed to explicitly set                         
"set undoreload=10000 " Already set by default, so not needed to explicitly set    
