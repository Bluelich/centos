color asmanian2                                                                                                                 "设置背景主题
set autochdir                                                                                                                   "自动切换当前目录为当前文件所在的目录
set autoindent                                                                                                                  "自动缩进
set autoread                                                                                                                    "设置当文件被改动时自动载入
set background=dark                                                                                                             "背景使用黑色
set backspace=2                                                                                                                 "在insert模式下用回格键(backspace)正常处理indent, eol, start等
set backspace=indent,eol,start                                                                                                  "不设定在插入状态无法用退格键和 Delete 键删除回车符
set backupcopy=yes                                                                                                              "设置备份时的行为为覆盖
set bsdir=buffer                                                                                                                "设定文件浏览器目录为当前目录
set clipboard=unnamed                                                                                                           "和系统共享剪贴板
set cmdheight=1                                                                                                                 "命令行(在状态行下)的高度，设置为1
set completeopt=longest,menu                                                                                                    "代码补全
set cursorline                                                                                                                  "为光标所在行加下划线
set encoding=utf-8                                                                                                              "设置编码
set fenc=utf-8                                                                                                                  "当前文件的编码
set fencs=utf-8,utf-16,big5,gb2312,gb18030,gbk,ucs-bom,cp936,latin1                                                             "打开文件的时候依次尝试解码列表
set fileencodings=utf-8,utf-16,big5,gb2312,gb18030,gbk,ucs-bom,cp936,latin1                                                     "使用这些编码打开文件
set fileformats=unix,dos,mac                                                                                                    "编辑vim配置文件
set fillchars=vert:\ ,stl:\ ,stlnc:\                                                                                            "在被分割的窗口间显示空白，便于阅读
set foldclose=all                                                                                                               "设置为自动关闭折叠
set foldcolumn=0                                                                                                                "设置折叠区域的宽度
set foldenable                                                                                                                  "允许折叠
set foldexpr=1                                                                                                                  "设置代码块折叠后显示的行数
set foldlevelstart=99                                                                                                           "打开文件默认不折叠
set foldmethod=indent                                                                                                           "设置代码折叠方式为手动indent
set foldmethod=syntax                                                                                                           "设置语法折叠
# set guifont=Courier_New:h10:cANSI                                                                                               "设置字体
"e:'showtabline'要求时,加入标签页.如果没有'e',可能使用非GUI标签页行.
"g:灰色菜单栏: 使得不活动的菜单栏变灰.如果没有包含'g',不活动的菜单栏完全不显示.
"m:使用菜单栏
"r:右边的滚动条总是存在
"L:如有垂直分割的窗口,左边的滚动条总是存在.
"t:包含可撕下的菜单项(一直显示在屏幕上). 目前只用于 WIn32, GTK+,Motif 1.2 GUI. .
"T:包含工具栏.目前只用于 WIn32, GTK+,Motif, Phton和 Athena GUI.
"l:左边的滚动条总是存在.
"L:如有垂直分割的窗口,左边的滚动条总是存在.
"b:底部(水平)滚动条总是存在.它的大小取决于最长的可见行
"h:限制水平滚动条的大小为光标所在行的长度,以减少计算量.
set guioptions=egmrLtT                                                                                                          "隐藏工具栏
set helplang=cn                                                                                                                 "帮助系统设置为中文
set hidden                                                                                                                      "允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set hls                                                                                                                         "检索时高亮显示匹配项
set hlsearch                                                                                                                    "搜索时高亮显示被找到的文本
set ignorecase                                                                                                                  "检索时忽略大小写
set ignorecase smartcase                                                                                                        "搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set incsearch                                                                                                                   "输入搜索内容时就显示搜索结果
set laststatus=2                                                                                                                "显示状态栏 (1:不显示 2:总是显示)
set lines=40 columns=155                                                                                                        "设定窗口大小
set linespace=0                                                                                                                 "字符间插入的像素行数
set listchars=tab:>-,trail:-                                                                                                    "TAB会被显示成 [>—]而行尾多余的空白字符显示成 [-]。
set magic                                                                                                                       "显示括号配对情况
set matchtime=1                                                                                                                 "匹配括号高亮的时间（单位是十分之一秒）
set mouse=a                                                                                                                     "可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set nobackup                                                                                                                    "覆盖文件时不备份
set nocursorline                                                                                                                "不突出显示当前行
set noerrorbells                                                                                                                "关闭错误信息响铃
set nolist                                                                                                                      "不显示Tab符
set novisualbell                                                                                                                "不要闪烁
set novisualbell                                                                                                                "关闭使用可视响铃代替呼叫
set nowrapscan                                                                                                                  "禁止在搜索到文件两端时重新搜索
set number                                                                                                                      "显示行号
set report=0                                                                                                                    "通过使用: commands命令，告诉我们文件的哪一行被改变过
set ruler                                                                                                                       "显示状态栏标尺
set scrolloff=3                                                                                                                 "光标移动到buffer的顶部和底部时保持3行距离
set selection=exclusive
set selectmode=mouse,key
set shiftwidth=4                                                                                                                "设定 << 和 >> 命令移动时的宽度为 4
set shortmess=atI                                                                                                               "取消启动画面
set showcmd                                                                                                                     "输入的命令显示出来
set showmatch                                                                                                                   "高亮显示匹配的括号
set smartindent                                                                                                                 "换行时使用智能自动缩进
set softtabstop=4                                                                                                               "使得按退格键时可以一次删掉 4 个空格
set tabstop=4
set viminfo+=!                                                                                                                  "保存全局变量
set wildmenu                                                                                                                    "增强模式中的命令行自动完成操作
setlocal foldlevel=1                                                                                                            "设置折叠层数为1
syntax enable
syntax on                                                                                                                       "语法高亮
winpos 5 5                                                                                                                      "设定窗口位置
