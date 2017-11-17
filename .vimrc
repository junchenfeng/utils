" Adpot .vimrc file by Martin Brochhaus
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'

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
" Put your non-Plugin stuff after this line

"encoding 
set fileencodings=utf-8,ucs-bom,cp936,gbk,gb2312,gb18030,big5,latin1


" Automatic reloading of .vimrc
 autocmd! bufwritepost .vimrc source %


" Mouse and backspace
 set mouse=a  " on OSX press ALT and click
 set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
 let mapleader = ","

" Quick quit command
 noremap <Leader>e :quit<CR>  " Quit current window
 noremap <Leader>E :qa!<CR>   " Quit all windows


" shortcut for common use
 map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
 map <Leader>p Ofmt.Printf()<C-c>

 " bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
 map <c-j> <c-w>j
 map <c-k> <c-w>k
 map <c-l> <c-w>l
 map <c-h> <c-w>h

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
 vnoremap < <gv  " better indentation
 vnoremap > >gv  " better indentation

" Color scheme
 set t_Co=256 
 color wombat256mod


" Enable syntax highlighting
" You need to reload this file for the change to apply
 filetype off
 filetype plugin indent on
 syntax on


" Showing line numbers and length
 set number  " show line numbers
 set nowrap  " don't automatically wrap on load
 set fo-=t   " don't automatically wrap text when typing
 set colorcolumn=80
 highlight ColorColumn ctermbg=233


" Useful settings
 set history=700
 set undolevels=700


" Indent behavior 
 set tabstop=4
 set softtabstop=4
 set shiftwidth=4
 set shiftround
 set expandtab
 set autoindent    " align the new line indent with the previous line


" Make search case insensitive
 set hlsearch
 set incsearch
 set ignorecase
 set smartcase


" Disable stupid backup and swap files - they terigger too many events
" for file system watchers
 set nobackup
 set nowritebackup
 set noswapfile



" Folding {{{
set foldenable
if &diff | set foldmethod=diff | else | set foldmethod=syntax | endif
set foldlevel=0
set foldopen=block,hor,tag,percent,mark,quickfix

function! FoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2)
    let fillcharcount = windowwidth - len(line)

    return line . repeat(" ", fillcharcount)
endfunction " }}}
set foldtext=FoldText()
"}}}


" ============================================================================
" Common tools 
" ============================================================================

" Nerd Tree
 map <C-n> :NERDTreeToggle<CR>

" ============================================================================
" Python IDE Setup
" ============================================================================


" jedi-vim 
" let g:jedi#goto_command = "<leader>d"
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = ""
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>r"

" ale
 let g:airline#extensions#ale#enabled = 1


" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
 set completeopt=longest,menuone
 function! OmniPopup(action)
     if pumvisible()
         if a:action == 'j'
             return "\<C-N>"
         elseif a:action == 'k'
             return "\<C-P>"
         endif
     endif
     return a:action
 endfunction

 inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
 inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" YCM
 let g:ycm_keep_logfiles = 1
 let g:ycm_log_level = 'debug' 

" ============================================================================
" GO IDE Setup
" ============================================================================
let g:go_version_warning = 0
