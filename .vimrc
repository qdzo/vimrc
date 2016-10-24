filetype off

" autoloading  VIM-PLUG
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" ######################## @plugins ########################################
call plug#begin('~/.vim/plugged')

" ==================== sytem plugin ====================

Plug 'Shougo/vimproc.vim', {'do' : 'make'}  "dependency for unite plugin

" ==================== sytem plugin ====================

" ==================== UI plugins ====================

"Plug 'mhinz/vim-startify'  " plugin for fancy start screen
Plug 'https://github.com/Shougo/unite.vim'  " unite ui
Plug 'https://github.com/Shougo/neoyank.vim'
Plug 'https://github.com/Shougo/neomru.vim'
Plug 'https://github.com/tsukkee/unite-tag'
Plug 'https://github.com/osyo-manga/unite-quickfix'
Plug 'https://github.com/Shougo/unite-outline'
" Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle'}
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ryanoasis/vim-devicons'

" ==================== #colorschemas ====================

Plug 'cohlin/vim-colorschemes'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'roosta/srcery'
Plug 'rakr/vim-two-firewatch'
Plug 'git://github.com/altercation/vim-colors-solarized.git'
Plug 'morhetz/gruvbox' " themes insired by  badwolf, jellybeans and solarized.
Plug 'https://github.com/gosukiwi/vim-atom-dark'
Plug 'https://github.com/joshdick/onedark.vim'

" "==================== edit simplifiers ====================

Plug 'godlygeek/tabular', { 'on': 'Tabularize' } " autointend with separator characher(regexp)
Plug 'surround.vim'               "great plugin
Plug 'commentary.vim'             "comments
Plug 'delimitMate.vim'            "autoclosing brackets, quotes and oth...
""Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
"Plug 'SirVer/ultisnips' " Track the engine.
Plug 'honza/vim-snippets' " Snippets are separated from the engine. Add this if you want them:
Plug 'terryma/vim-multiple-cursors'
Plug 'EasyMotion'
Plug 'chrisbra/changesplugin' "detect & indicate changes in a file
Plug 'terryma/vim-expand-region'
" Plug 'maxbrunsfeld/vim-yankstack'

" ==================== develop improvers ====================

Plug 'jpalardy/vim-slime', { 'for': ['SlimeSend', 'SlimeConfig'] } " live REPL
Plug 'taglist.vim'
" Plug 'tagbar'
Plug 'scrooloose/syntastic'       "syntax checking for errors

" ==================== GIT specific  ====================

Plug 'tpope/vim-fugitive'         "git integration
" IPlug 'airblade/vim-gitgutter' " git modify indicator
Plug 'xuyuanp/nerdtree-git-plugin' " git changes indicator (in filesystem)

" ==================== language specific  ====================


" syntax highlight
Plug 'https://github.com/chochos/ceylon-vim', { 'for': 'ceylon' }
Plug 'tiddlywiki', { 'for': ['tid','txt','tiddly'] }
Plug 'plasticboy/vim-markdown', { 'for': 'md' }

" Ruby
Plug 'ruby.vim', { 'for': 'ruby' }
Plug 'Ruby-Snippets', { 'for': 'ruby' }

" Clojure
Plug 'https://github.com/guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'https://github.com/tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'paredit.vim' , { 'for': ['clojure', 'lisp'] }
" used with lips/clojure

" Plug 'amdt/vim-niji' " rainbow parantheses
" javascript
Plug 'pangloss/vim-javascript', { 'for': ['js','javascript']}
Plug 'mxw/vim-jsx', { 'for': ['js', 'jsx', 'javascript']}


" HTML 5
Plug 'othree/html5.vim', { 'for': 'html' }

call plug#end()
" ######################## @plugins ########################################

" #unite
let g:unite_enable_start_insert=1 "auto insert mode
let g:unite_split_rule="botright" "show unite in bottom of the screen
let g:unite_force_overwrite_statusline=1
let g:unite_winheight=10  "window size
let g:unite_candidate_icon="▷"  "pretty arrows
let g:unite_source_history_yank_enable=1 "enable yank history



" for #devicons correct showing
set encoding=utf8

filetype plugin indent on    " required
filetype indent on
filetype plugin on
set laststatus=2
syntax on
syntax sync minlines=256
set synmaxcol=200

" #delimitmate
let delimitMate_smart_quotes = '\w\%#'    " smart quotes near words
let delimitMate_balance_matchpairs = 1
let delimitMate_jump_expansion = 1
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 2
"au FileType tcl let b:delimitMate_smart_quotes = '!\s\%#\w'
"au FileType tcl let b:delimitMate_balance_matchpairs = 1
"au FileType tcl let b:delimitMate_jump_expansion = 0
""au FileType mail let b:delimitMate_expand_cr = 1


" enable #syntastic
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "\u2717"
let g:syntastic_warning_symbol = "\u26A0"
let g:syntastic_javascript_checkers = ['eslint'] " 4 react jsx
let g:syntastic_auto_jump = 2
let g:syntastic_auto_loc_list = 0   " auto window disabled


set cursorline
set showmatch
set autoindent
set number
set norelativenumber " нумерация строк относительно текущей позиции курсора
set numberwidth=2

" Настроим кол-во символов пробелов, которые будут заменять \t
set tabstop=2
set shiftwidth=2
set smarttab
set et " включим автозамену по умолчанию

set wrap " попросим Vim переносить длинные строки

set ai " включим автоотступы для новых строк
set cin " включим отступы в стиле Си

" Далее настроим поиск и подсветку результатов поиска и совпадения скобок
set showmatch
set hlsearch
set incsearch
set ignorecase

" Send more characters to the terminal at once.
" " Makes things smoother, will probably be enabled by my terminal anyway.
set ttyfast

set lz " ленивая перерисовка экрана при выполнении скриптов

" включить мышь
set mouse=a

" show trailing speces
"match ExtraWhitespace /\s\+$/
set listchars=tab:▸\ ,trail:·
set list




"  ################################ @colors  ################################

"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red


" two-firewatch colorscheme
"set background=dark " or light if you prefer the light version
"let g:two_firewatch_italics=1
"colo two-firewatch

"let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme

"set background=dark
"colors srcery

" darcula
"colorscheme py-darcula
"let g:airline_theme = "darcula"
colorscheme atom-dark-256

"color desert

"  ################################ @colors ################################

"  ################################ @ui ################################

" disable gui elements
set guioptions-=T  "remove toolbar
set guioptions-=m  "remove menu bar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" fonts
"set guifont=Andale\ Mono\ 12
" set guifont=DroidSansMonoForPowerline\ Nerd\ Font:h14
" set guifont=UbuntuMono\ Nerd\ Font\ Regular\ 12
"set guifont=Monospace\ h12
"set guifont=FiraMono:14
"set guifont=Monaco:h14
"set guifont= Lucida_Console:h13
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
"set lines=70 columns=100 linespace=3

highlight Cursor guibg=Red guifg=NONE
highlight iCursor guibg=steelblue guifg=NONE

if &term =~ "xterm\\|rxvt"
    " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;orange\x7"
    " use a red cursor otherwise
    let &t_EI = "\<Esc>]12;red\x7"
    silent !echo -ne "\033]12;red\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
    " use \003]12;gray\007 for gnome-terminal and rxvt up to
    version 9.21
endif

"  ################################ @ui ################################


"  ################################ @os-specific  ################################

if has("unix")
  let s:uname = system("uname -s")
  if matchstr(s:uname, "Darwin") == "Darwin"
    set guifont=DroidSansMonoForPowerline\ Nerd\ Font:h16
    "set macmeta " for option-key working on mac
  else
    set guifont=DroidSansMonoForPower\ Line\ Nerd\ Font\ 12
  endif
endif

"  ################################ @os-specific  ################################

" автозапуск HardMode
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()


" #ctrlp settings
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
" let g:ctrlp_root_markers = ['pom.xml']
" let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_buftag_ctags_bin = '/usr/bin/ctags'

" #nerdtabstree
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_open_on_new_tab = 0

" VIMRC Reload after changes

augroup myvimrc
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END


" disable a bip on ESC key
set vb


" auto change dir
"set autochdir
"autocmd BufEnter * silent! lcd %:p:h

" make #youcompleteme compatible with #ultisnips (using #supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-n>"
let g:UltiSnipsJumpBackwardTrigger="<C-p>"


" #slime work with tmux (not screen)
let g:slime_target = "tmux"

" #vim-javascript
let g:javascript_enable_domhtmlcss=1


" auto #tabularize while inserting columns
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction


" for #vim-jsx work in .js files
let g:jsx_ext_required = 0


" for #nerdtree and #ctrlp working dir sync
let g:NERDTreeChDirMode       = 2
let g:ctrlp_working_path_mode = 'rw'

" disablin viminfo
set viminfo="NONE"

" ################################ @keymaps #################################

" russian keyboard
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guibg=Cyan guifg=NONE
vmap <space> <Esc>
imap jk <Esc>
nnoremap <C-s> :w<CR>

" tab movemenT
noremap <silent> <C-l> :tabnext<CR>
nnoremap <silent> <C-h> :tabprevious<CR>

" swap paragraph with next
:nnoremap g{ {dap}p{

" swap lines
"nnoremap <C-j> :m .+1<CR>==
"nnoremap <C-k> :m .-2<CR>==
"vnoremap <C-j> :m '>+1<CR>gv=gv
"inoremap <C-j> <Esc>:m .+1<CR>==gi
"inoremap <C-k> <Esc>:m .-2<CR>==gi
"vnoremap <C-k> :m '<-2<CR>gv=gv

" #airline power symbols
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1 " enable buffer tabs when only one tab open
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"ceylon menu
set wildmenu
set wcm=<Tab>
menu Ceylon.format :!ceylon format % <CR>
menu Ceylon.run    :!ceylon run % <CR>
menu Ceylon.compile :!ceylon compile % <CR>
menu Ceylon.tests  :!ceylon test % <CR>

map <C-c>c :emenu Ceylon.<Tab>

" #unite menu
let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.mymenu = {
            \   'description' : 'My Unite menu',
            \ }
let g:unite_source_menu_menus.mymenu.candidates = {
            \   'mru&buffer'      : 'Unite buffer file_mru',
            \   'tag'      : 'Unite tag',
            \   'file'      : 'Unite file',
            \   'file_rec'      : 'Unite file_rec',
            \   'file_rec/async'      : 'Unite file_rec/async',
            \   'find'      : 'Unite find',
            \   'grep'      : 'Unite grep',
            \   'register'      : 'Unite register',
            \   'bookmark'      : 'Unite bookmark',
            \   'output'      : 'Unite output',
            \
            \}

function g:unite_source_menu_menus.mymenu.map(key, value)
        return {
                \       'word' : a:key, 'kind' : 'command',
                \       'action__command' : a:value,
                \ }
endfunction

" vimrc edit in new tab
:command! Vimrc tabe $MYVIMRC

" killing trailing space
:command! Trailings :%s/\( \+\)$//g

" remaping <Leader> key to space
nmap <space> <leader>

" #easymotion. search forward/backward
map <space>/ <leader><leader>f
map <space>? <leader><leader>F

" window command management
map <leader>w <C-w>
map <leader>1 <C-w>c
map <leader>2 <C-w>v
map <leader>3 <C-w>s
" map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

" Tabs
map <leader>tn :tabnew<CR>
map <leader>tl :tabn<CR>
map <leader>th :tabp<CR>
map <leader>tc :tabclose<CR>

" buffers
"map <leader>bl :ls<CR>
"map <leader>b :b

" command
map <leader>; :

" save file
map <leader>s :w<CR>

" #vim-plug hot-keys
map <leader>pi :PlugInstall<CR>
map <leader>pc :PlugClean<CR>
map <leader>ps :PLugStatus<CR>
map <leader>pd :PLugDiff<CR>
map <leader>pu :PLugUpdate<CR>

" #nerdtree toggle
map <leader>n :NERDTreeTabsToggle<CR>

" #tabularize 'd
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Copy to system clipboard
vnoremap <C-c> "+y

" go to next/prev errors
nmap <leader>en :lnext<CR>
nmap <leader>ep :lprev<CR>

" #unite file searcher
" nnoremap <leader>f :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>
""nnoremap <C-p> :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>
nnoremap <C-p> :<C-u>Unite -no-split -buffer-name=files -default-action=tabopen file_rec/async:!<CR>
nnoremap <leader>b :<C-u>Unite -no-split -quick-match -buffer-name=buffers  buffer<CR>
nnoremap <leader>y :<C-u>Unite -quick-match -buffer-name=yank-history history/yank<CR>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline outline<CR>
nnoremap <C-t> :<C-u>Unite -no-split -buffer-name=tags tag<CR>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru file_mru<CR>
nnoremap <leader>m :<C-u>Unite -quick-match -no-split -buffer-name=bookmark bookmark<CR>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=grep grep:!<CR>

"################################ Ergo project #############################

" undo/redo 
nnoremap z u
nnoremap <S-z> <C-r>

" basic movements
nnoremap i <Up>
vnoremap i <Up>
nnoremap k <Down>
vnoremap k <Down>
nnoremap j <Left>
vnoremap j <Left>
nnoremap l <Right>
vnoremap l <Right>

" word backward (emacs like hehavior)
nnoremap u b<Left>
vnoremap u b<Left>

" word forward (emacs like hehavior)
nnoremap o e<Right>
vnoremap o e<Right>

" end of line
nnoremap h I
vnoremap h I
" end of line
nnoremap H A
vnoremap H A

" to sentence begin
nnoremap J (
vnoremap J (

" to sentence end
nnoremap L )
vnoremap L )

" to start of paragraph 
nnoremap I {
vnoremap I {

" to start of paragraph 
nnoremap K }
vnoremap K }

" new line below
nnoremap <CR> o<Esc>


" toggle insert-mode
nnoremap v i
" toggle visual-mod (selection-mode)
" vunmap s
" sunmap s
nnoremap ss v
" visual line selection
nnoremap sl V
" selection of text-objects
nnoremap s vi
nnoremap S va
" FIX does not work 
nnoremap <C-s> <C-v>

vnoremap v a
vnoremap s vi

"insert mode movements
"iunmap <C-i>
"iunmap <C-k>
"iunmap <C-j>
"iunmap <C-l>

inoremap <C-i> <Up>
inoremap <C-k> <Down>
inoremap <C-j> <Left>
inoremap <C-l> <Right>

" FIX not working
"nnoremap <C-;> Ak<Esc>
""inoremap <C-Space> <C-n>

"################################ @keymaps #################################

