# 有用的工具
##rufus u盘安装工具
#### 下载网站Cancel changes
https://rufus.ie/
### 用途
用来向u盘、光盘中刻录文件。

## 知云文献
### 用途
用来看外网文献，通过选择文字实现翻译。

## everything
### 用途
用于快速搜索电脑文件。

## geek uninstall
微软官方出品的卸载工具，对于难以卸载的文件这个非常的好用。

## kazam
linux 录屏软件,ubuntu直接安装即可。

## Terminalizer 终端记录软件
https://linux.cn/article-10237-1.html
https://www.npmjs.com/package/terminalizer


昔日龌龊不足夸，今朝放荡思无涯。

春风得意马蹄疾，一日看尽长安花。

诗人两次落第，这次竟然高中，就仿佛一下子从苦海中超度出来，登上了欢乐的顶峰。所以，诗一开头就直接倾泻心中的狂喜，说以往那种生活上的困顿和思想上的不安再也不值得一提了，此时金榜题名，终于扬眉吐气，自由自在，真是说不尽的畅快。

filetype off
syntax on
set number
colorscheme desert
" my specialization

"不产生交换文件
set noswapfile
let mapleader = "f" 
"搜索高亮
set incsearch
set hlsearch
set number
set tabstop=2
set softtabstop =2
set shiftwidth=2
"keyboard map
imap jk <Esc>
nmap <space> :
map <silent> <C-e> :NERDTree<CR>
map <C-r> :NERDTreeToggle<CR>
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap <p <p></p><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
" All of your Plugins must be added before the following line
Plugin 'easymotion/vim-easymotion'

call vundle#end()            " required
filetype plugin indent on    " required
