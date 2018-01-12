"************************************************************************************
"                           		  Vundle                                      
"************************************************************************************

" see :h vundle for more details or wiki for FAQ

set nocompatible              				          "be iMproved, required 关闭 vi 兼容模式
filetype off                 			 	            "required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"********************************
"             Bundles
"********************************
" Examples
" Plugin 'tpope/vim-fugitive'  				          >> plugin on GitHub repo
" Plugin 'L9' 				   					              >> plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'git://git.wincent.com/command-t.git'  >> Git plugin not hosted on GitHub
" Plugin 'file:///home/gmarik/path/to/plugin'.  >> git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}    >> The sparkup vim script is in a subdirectory of this repo called vim, Pass the path to set the runtimepath properly.
" Plugin 'ascenator/L9', {'name': 'newL9'}      >> Install L9 and avoid a Naming conflict if you've already installed a different version somewhere else.

Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline' 				        "底部状态栏
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wakatime/vim-wakatime'
Plugin 'easymotion/vim-easymotion'	            "快速移动  \target
Plugin 'Shougo/neocomplete'						          "completion
Plugin 'nathanaelkane/vim-indent-guides'		    "缩进可视化,方便条件分支等的配对
Plugin 'matze/vim-move'							            "快速移动  A-   Move current line/selection   k:up j:down
Plugin 'Valloric/YouCompleteMe'				          "code completion
Plugin 'sjl/gundo'		  						            "撤销tree可视化
Plugin 'terryma/vim-multiple-cursors'		        "True Sublime Text style multiple selections for Vim
Plugin 'itchyny/calendar'						            "日历 :Calendar
Plugin 'godlygeek/tabular'					            "Text filtering and alignment

call vundle#end()                               "required

filetype plugin indent on                       "开启插件

"************************************************************************************
"                                      Settings                                       
"************************************************************************************

filetype on  							                      "侦测文件类型
filetype plugin on  					                  "载入文件类型插件
filetype indent on 						                  "为特定文件类型载入相关缩进文件

"********************************
"             Themes                                       
"********************************
colorscheme lucario
set background=dark                            "背景使用黑色 
set guifont=Courier_New:h10:cANSI              "设置字体

"********************************
"             General                                       
"********************************
set title                                      "显示文件名
set ruler                                      "显示状态栏标尺
set showmatch                                  "高亮显示匹配的括号
set matchtime=1                                "匹配括号高亮的时间（单位是十分之一秒）
set expandtab                                  "和下面2个配置配合使用，设置tab和缩进空格数
set shiftwidth=4                               "设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4                              "使得按退格键时可以一次删掉 4 个空格
set tabstop=4                                  "tab宽度 
set number                                     "显示行号
set nobackup                                   "覆盖文件时不备份
set autoread                                   "文件在Vim之外修改过，自动重新读入
set ignorecase                                 "检索时忽略大小写
set encoding=utf-8                             "设置编码 
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1  "使用这些编码打开文件
set hls                                        "检索时高亮显示匹配项
set helplang=cn                                "帮助系统设置为中文
set foldenable                                 "允许折叠
set foldmethod=syntax                          "语法折叠
set showcmd                                    "输入的命令显示出来
set laststatus=2                               "启动显示状态行(1),总是显示状态行(2) 
set cursorline                                 "突出显示当前行  nocursorline:不突出显示
set completeopt=longest,menu                   "代码补全
set smartindent                                "为C程序提供自动缩进
set scrolloff=3                                "光标移动到buffer的顶部和底部时保持3行距离
set wildmenu                                   "增强模式中的命令行自动完成操作
set cursorline                                 "为光标所在行加下划线
set mouse=a                                    "可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set selectmode=mouse,key
set report=0                                   "通过使用: commands命令，告诉我们文件的哪一行被改变过
set fillchars=vert:\ ,stl:\ ,stlnc:\           "在被分割的窗口间显示空白，便于阅读
set bsdir=buffer                               "设定文件浏览器目录为当前目录 
set autochdir                                  "自动切换当前目录为当前文件所在的目录
set clipboard=unnamed                          "和系统共享粘贴板
set relativenumber                             "Show related row numbers
set incsearch                                  "输入搜索内容时就显示搜索结果
set hlsearch                                   "搜索时高亮显示被找到的文本
set noerrorbells                               "关闭错误信息响铃
set novisualbell                               "关闭使用可视响铃代替呼叫
set magic                                      "显示括号配对情况
set autoindent
set smartindent                                "开启新行时使用智能自动缩进
set backspace=indent,eol,start                 "不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1                                "设定命令行的行数为 1
set smartcase
set history=1000
set t_Co=256                                   "256色

"********************************
"             Other                                       
"********************************
syntax enable
syntax on                                      "语法高亮
autocmd InsertLeave * se nocul                 "用浅色高亮当前行  
autocmd InsertEnter * se cul                   "用浅色高亮当前行  

if has("gui_running")
  set guifont=Source\ Code\ Pro\:h18  " set guifont=PowerlineSymbols\ for\ Powerline
  "let g:Powerline_symbols = 'fancy'
endif

"set my leader
let mapleader="\<Space>"
let g:mapleader="\<Space>"

"tabs
nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove

"switch window
:map <leader>w <C-W>w

" tab navigation like zsh
:nmap <leader>h :tabprevious<CR>
:nmap <leader>l :tabnext<CR>

" settings for resize splitted window
nmap w[ :vertical resize -3<CR>
nmap w] :vertical resize +3<CR>

nmap w- :resize -3<CR>
nmap w= :resize +3<CR>

"************************************************************************************
"                                  插件配置                                       
"************************************************************************************

let g:airline_powerline_fonts = 1
let g:airline_theme='light'

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2

"For vim-move
let g:move_key_modifier = 'C'

"For Indent Guides Plugin
let g:indent_guides_enable_on_vim_startup = 1

"For NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let NERDTreeQuitOnOpen = 1
let NERDChristmasTree=1
let NERDTreeChDirMode=2
let g:NERDTreeWinSize = 32 
map <C-n>f :NERDTreeToggle<CR>
" let loaded_nerd_tree=1
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
"File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

"For nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"For vim-easymotion
let g:EasyMotion_leader_key = ","

"auto completed
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
