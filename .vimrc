set nocompatible               " dump the old fashioned vi support!
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set backup                     " keep a backup file
set backupdir=~/.backups       " custom backup directory
set history=100                " keep 100 lines of command line history
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands
set mouse=a                    " enable the mouse
set lazyredraw                 " don't update the display while executing macros
set showmode                   " so you know what mode you are in
set laststatus=2               " always put a status line in.
set scrolloff=10               " start scrolling 10 lines from the top/bottom
set ch=2                       " set command line 2 lines high
"set nowrap                     " no line wrapping 
set shiftwidth=2               " round indent actions to multiple of 2
set softtabstop=2              " soft tabs = 2 spaces 
set tabstop=2                  " tabs = 2 spaces
set expandtab                  " expand tabs to spaces
set incsearch                  " do incremental searching
set hlsearch                   " highlight search terms
set ignorecase                 " case insensitive search
set gdefault                   " replace all instances on line when doing global search/replace
set number                     " enable line numbers
set showmatch                  " show matching parenthesis
set hidden                     " allow hidden buffers with unsaved changes
set whichwrap+=<,>,[,]         " allow arrow keys to line wrap
set wildmenu                   " enable enhanced command line completion
set wildignore+=*.pui,*.prj    " ignore these when completing file or directory names
set ttyfast                    " faster terminal updates
set virtualedit+=block         " allow virtual-block select to go past end of lines

syntax on                      " enable syntax highlighting
filetype plugin indent on      " enable file type detection

" Colors
" ======
set t_Co=256
colorscheme murphy

" Easy edit/open commands
" =======================
command EditVim  :edit   ~/.vimrc
command EditBash :edit   ~/.bashrc
command EditCI   :edit   ~/.vim/scripts/ci
command EditLP   :edit   ~/.vim/scripts/lp
command SourceCI :source ~/.vim/scripts/ci
command SourceLP :source ~/.vim/scripts/lp

" My favorite mappings
" ====================

map <C-a>     :Ack<Space>
map <C-f>     :NERDTreeToggle<CR>
map <C-t>     :CommandT<CR>
map <C-b>     :BufExplorer<CR>
map <C-o>     :TlistToggle<CR>

map <F11>   :ZoomWin<CR>
map <F12>   :noh<CR>

" switch p and P
" ==============
noremap p P
noremap P p
noremap o O
noremap O o

" WINDOW MANAGEMENT
" ================
map <Bar>   <C-W>v<C-W><Right>
map -       <C-W>s<C-W><Down>
map <Tab>   <C-W>w
map <Esc>[Z <C-W>W
map <C-c>   <C-W>c

" QUICK SAVE
" ==========
noremap  <C-s> :wa<CR>
inoremap <C-s> <Esc>:wa<CR>
noremap  <C-q> :SaveSession<CR>:qa<CR>
inoremap <C-q> <Esc>:SaveSession<CR>:qa<CR>

" QUICK ENTRY INTO INSERT MODE
" ============================
nnoremap <Space> i<Space>
nnoremap <Del>   i<Del>

