""""""""""""""""""""""""""""
""""""""""缩进&制表符
""""""""""""""""""""""""""""
"使vim在创建新行的时候使用与上一行同样的缩进
set autoindent
"创建新行时使用智能缩进。
set smartindent
"设置制表符（tab）的宽度（以空格的数量表示）
set tabstop=2
"设置位移操作>>或<<的缩进长度
set shiftwidth=2
""""""""""""""""""""""""""""
""""""""""显示&格式化
""""""""""""""""""""""""""""
"行号
set number
"文本超过一定长度自动换行
set textwidth=60
"要根据从窗口右侧向左数的列数来自动换行：
set wrapmargin=2
"当光标遍历文件时经过括号时，高亮标识匹配的括号
set showmatch
""""""""""""""""""""""""""""
""""""""""搜索
""""""""""""""""""""""""""""
"搜索过程中动态显示匹配内容：
set incsearch
"高亮搜索内容的所有匹配位置：
set hlsearch 
"搜索时忽略大小写：
set ignorecase
""""""""""""""""""""""""""""
""""""""""其他选项
""""""""""""""""""""""""""""
"不显示交换文件 
set noswapfile
"禁止创建备份文件：Vim 在覆盖文件前创建一个备份，文件成功写入后保留该备份。如果不想保留该备份文件，可以按下面的方式关闭。
set nobackup
"语法高亮
syntax on
"突出显示当前行
set cursorline 

""""""""""""""""""""""""""""
""""""""""自定义选项
""""""""""""""""""""""""""""
"keyboard map
imap jk <Esc>
nmap <space> :
"自定义leader键
let mapleader = "f" 

map <silent> <C-e> :NERDTree<CR>
map <C-r> :NERDTreeToggle<CR>
"括号自动补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap <p <p></p><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

"easymotion 
let mapleader = "f" 

"NERDTree配置文件
"安装的插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'leafoftree/vim-vue-plugin'
Plugin 'mattn/emmet-vim'
Plugin 'preservim/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'honza/vim-snippets'
call vundle#end()            " required
filetype plugin indent on    " required
