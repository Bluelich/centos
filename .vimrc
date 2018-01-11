"************************************************************************************
"                           		  Vundle                                      
"************************************************************************************

" see :h vundle for more details or wiki for FAQ

set nocompatible              				   " be iMproved, required 关闭 vi 兼容模式
filetype off                 			 	   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"********************************
"             Bundles
"********************************
" Examples
" Plugin 'tpope/vim-fugitive'  				    >> plugin on GitHub repo
" Plugin 'L9' 				   					>> plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'git://git.wincent.com/command-t.git'  >> Git plugin not hosted on GitHub
" Plugin 'file:///home/gmarik/path/to/plugin'.  >> git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}    >> The sparkup vim script is in a subdirectory of this repo called vim, Pass the path to set the runtimepath properly.
" Plugin 'ascenator/L9', {'name': 'newL9'}      >> Install L9 and avoid a Naming conflict if you've already installed a different version somewhere else.

Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline' 				" 底部状态栏
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wakatime/vim-wakatime'
Plugin 'easymotion/vim-easymotion'				" 快速移动  \target
Plugin 'Shougo/neocomplete'						" completion
Plugin 'nathanaelkane/vim-indent-guides'		" 缩进可视化,方便条件分支等的配对
Plugin 'matze/vim-move'							" 快速移动  A-   Move current line/selection   k:up j:down
Plugin 'Valloric/YouCompleteMe'				    " code completion
Plugin 'sjl/gundo'		  						" 撤销tree可视化
Plugin 'terryma/vim-multiple-cursors'		    " True Sublime Text style multiple selections for Vim
Plugin 'itchyny/calendar'						" 日历 :Calendar
Plugin 'godlygeek/tabular'					    " Text filtering and alignment

call vundle#end()            " required

filetype plugin indent on    " required

"************************************************************************************
"                                      Settings                                       
"************************************************************************************

filetype on  							" 侦测文件类型
filetype plugin on  					" 载入文件类型插件
filetype indent on 						" 为特定文件类型载入相关缩进文件

"********************************
"             Themes                                       
"********************************
colorscheme lucario
set background=dark

"********************************
"             General                                       
"********************************
set ai                      			"自动缩进
set bs=2                    			"在insert模式下用退格键删除
set showmatch               			"高亮显示匹配的括号
set matchtime=1							"匹配括号高亮的时间（单位是十分之一秒）
set laststatus=2            			"总是显示状态行
set expandtab               			"和下面2个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set number                  			"显示行号
set autoread                			"文件在Vim之外修改过，自动重新读入
set ignorecase              			"检索时忽略大小写
set fileencodings=uft-8,gbk 			"使用utf-8或gbk打开文件
set hls                     			"检索时高亮显示匹配项
set helplang=cn             			"帮助系统设置为中文
set foldenable      					"允许折叠
set foldmethod=syntax       			"代码折叠
set showcmd         					"输入的命令显示出来，看的清楚些
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=1    					"启动显示状态行(1),总是显示状态行(2)  
set go=             					"不要图形按钮  
set autoread							"设置当文件被改动时自动载入
set cursorline              			"突出显示当前行 			
set completeopt=longest,menu  			"代码补全
set smartindent							"为C程序提供自动缩进
set scrolloff=3     					"光标移动到buffer的顶部和底部时保持3行距离

"set completeopt=menuone
"set wildmenu 							" 增强模式中的命令行自动完成操作
"set linespace=0  						"字符间插入的像素行数目
"set iskeyword+=_,$,@,%,#,-   			"带有如下符号的单词不要被换行分割
"set viminfo+=!  						"保存全局变量
"set cursorline              			"为光标所在行加下划线
"set guioptions-=T           			"隐藏工具栏
"set guioptions-=m           			"隐藏菜单栏
"set cmdheight=1     					"命令行（在状态行下）的高度，设置为1 
"set whichwrap+=<,>,h,l   				"允许backspace和光标键跨越行边界(不建议)  
"set mouse=a 							"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
"set novisualbell    					"不要闪烁 
"set shortmess=atI 						"取消启动画面
"set lines=40 columns=155   			"设定窗口大小
"set background=dark 					"背景使用黑色  
"set guifont=Courier_New:h10:cANSI   	"设置字体
"set ruler           					"显示状态栏标尺
"set selection=exclusive
"set selectmode=mouse,key
"set report=0							" 通过使用: commands命令，告诉我们文件的哪一行被改变过
"set fillchars=vert:\ ,stl:\ ,stlnc:\	" 在被分割的窗口间显示空白，便于阅读

"winpos 5 5          					"设定窗口位置
"color asmanian2     					"设置背景主题  

syntax on   	   						"语法高亮
syntax enable
autocmd InsertLeave * se nocul  		"用浅色高亮当前行  
autocmd InsertEnter * se cul    		"用浅色高亮当前行  

" 显示中文帮助 :help
" Set Vim help to Chinese and utf-8 encoding
if version >= 603
    set helplang=cn
    set encoding=utf-8
    set fileencoding=utf-8
endif	 

" 设定文件浏览器目录为当前目录  
set bsdir=buffer  
" 设置编码  
set encoding=utf-8  
set nocompatible
set laststatus=2
" 设置文件编码  
set fenc=utf-8 

"set to use clipboard of system
set clipboard=unnamed

" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  

"Show related row numbers
set relativenumber

"退格键设置
"set backspace=2		"在insert模式下用回格键(backspace)正常处理indent, eol, start等
set backspace=indent,eol,start

"忽略大小写查找
"set ic

" tab宽度  
"set tabstop=2  
"set cindent shiftwidth=2  
"set autoindent shiftwidth=2 

" set 折叠
set foldmethod=indent
" 打开文件默认不折叠
set foldlevelstart=99

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


" 以下配置需要去掉重复的,有时间了改

"设置leader为
let mapleader=","
let g:mapleader=","

set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936,gb18030 
set tabstop=4

set nocompatible            " 关闭 vi 兼容模式
syntax on                   " 自动语法高亮
filetype plugin indent on   " 开启插件
set number                  " 显示行号
set nocursorline            " 不突出显示当前行
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set nobackup                " 覆盖文件时不备份
set nowb
set autochdir               " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes          " 设置备份时的行为为覆盖
" set autoread                " set to auto read when a file changed from the outside
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
" set nowrapscan              " 禁止在搜索到文件两端时重新搜索
set incsearch               " 输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本
set noerrorbells            " 关闭错误信息响铃
set novisualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码
set showmatch               " 插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2             " 短暂跳转到匹配括号的时间
" set nowrap                  " 不自动换行
set magic                  " 显示括号配对情况
set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set smartindent             " 开启新行时使用智能自动缩进
set backspace=indent,eol,start
                            " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=1            " 显示状态栏 (默认值为 1, 无法显示状态栏)
" set foldenable              " 开始折叠
" set foldmethod=syntax       " 设置语法折叠
" set foldcolumn=0            " 设置折叠区域的宽度
" setlocal foldlevel=1        " 设置折叠层数为
" set foldclose=all           " 设置为自动关闭折叠
" colorscheme colorzone       " 设定配色方案
set background=dark
" colorscheme solarized         " 设定配色方案
colorscheme desert        " 设定配色方案
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\ 
                            " 设置在状态行显示的信息
" 显示Tab符
set nolist
set listchars=tab:>-,trail:-


" 设置鼠标
" set mouse=a

"设置代码折叠方式为 手工  indent
"set foldmethod=indent
"设置代码块折叠后显示的行数
set foldexpr=1
"编辑vim配置文件
set fileformats=unix,dos,mac

"************************************************************************************
"                                  其他配置                                       
"************************************************************************************

"Powerline配置
if has("gui_running")
	"set GUI font type
	set guifont=Source\ Code\ Pro\:h18  " set guifont=PowerlineSymbols\ for\ Powerline
	set nocompatible
	set t_Co=256
      " let g:Powerline_symbols = 'fancy'
endif

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
