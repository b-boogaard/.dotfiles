" Map leader to `,`
let mapleader=","

" Encode files as UTF-8
set encoding=utf-8

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set modelines=0

" Enable Folding
set foldlevel=1
set foldnestmax=10
set nofoldenable
set foldmethod=syntax

" Load powerline
silent! python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Load plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on

" Softtabs, 2 spaces, be smart
set expandtab
set tabstop=2
set shiftwidth=2
set shiftround

" Linebreak on 100 characters
set lbr
set tw=100

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Add line at 100 characters
set colorcolumn=100
set textwidth=100

" Treat long lines as break lines
nnoremap j gj
nnoremap k gk

" Use one space, not two, after punctuation.
set nojoinspaces

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
" Manual Whitespace Remove
" map <leader>ws :call DeleteTrailingWS()<cr>

" Deletes Trailing Whitespace on Save
autocmd BufWrite *.* :call DeleteTrailingWS()

" Display whitespace as `*`
set list
set listchars=tab:>\ ,trail:*

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
map <leader>m :call VisualSelection('replace')<CR>
map <leader>n :call VisualSelection('gv')<CR>

" Always show the status line
set laststatus=2

" Enable tab completion on command line
set wildmenu
set wildmode=list:longest

" Always show 3 lines around the cursor
set scrolloff=3

" Highlight the cursor line
set cursorline

" Use 256 bit colors
set t_Co=255

" Enable syntax highlighting
syntax enable
syntax on

" Use solarized dark
colorscheme solarized
set background=dark

" Vim-Json
let g:vim_json_syntax_conceal=0
let g:vim_json_warnings=0

" Vim-Tags
let g:vim_tags_use_language_field=1

" Use a visual bell instead of a beep or flash
set visualbell

" Use fast terminal connection
set ttyfast

" Show cursor location
set ruler

" Allow backspacing over the following
" - indent  allow backspacing over autoindent
" - eol allow backspacing over line breaks (join lines)
" - start allow backspacing over the start of insert
set backspace=indent,eol,start

" Have gutter show line number
" set relativenumber " relative to cursor position
set number " normal
set numberwidth=5

" Save undo histroy
set undofile

" Ignore case when searching
set ignorecase

" Use cases when searching if upper case is used
set smartcase

" Show search results as it is typed
set incsearch

" Show match
set showmatch

" Highlight matches
set hlsearch

" Substitute all by default
set gdefault

" Format Options
" * q - Allow formatting of comments with `qq`
" * r - Insert comment on new line when in insert mode
" * n - Recognize numbered lists
" * 1 - Break lines before one letter words instead of after
set formatoptions=qrn1

" Enable mouse use in all modes
set mouse=a
set ttymouse=xterm2

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Enable rainbow parentheses for all buffers
augroup rainbow_parentheses
au!
au VimEnter * RainbowParenthesesActivate
au BufEnter * RainbowParenthesesLoadRound
au BufEnter * RainbowParenthesesLoadSquare
au BufEnter * RainbowParenthesesLoadBraces
augroup END

" Rainbow Parentheses colours using Solarized
let g:rbpt_colorpairs=[
  \ [ '13', '#6c71c4'],
  \ [ '5',  '#d33682'],
  \ [ '1',  '#dc322f'],
  \ [ '9',  '#cb4b16'],
  \ [ '3',  '#b58900'],
  \ [ '2',  '#859900'],
  \ [ '6',  '#2aa198'],
  \ [ '4',  '#268bd2'],
  \ ]

" Autocomplete
set omnifunc=syntaxcomplete#Complete

nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>/ :CtrlPBuffer<cr>

" let g:ctrlp_working_path_mode ='rc'
let g:ctrlp_root_markers = '.cache-main, .project'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Remap localleader to `-`
let maplocalleader="-"

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" ; works like :
nnoremap ; :

" f-d works like escape
inoremap fd <ESC>

" C-(navigation) will work to change screens
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" NERDTree toggling
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" leader space will clear search results
nnoremap <leader><space> :noh<cr>

" Return to last edit position when opening files
autocmd BufReadPost
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag --literal --files-with-matches --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
  endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg=@"
    execute "normal! vgvy"

    let l:pattern=escape(@", '\\/.*$^~[]')
    let l:pattern=substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.*')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/=l:pattern
    let @"=l:saved_reg
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum=bufnr("%")
   let l:alternateBufNum=bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
