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
"不产生交换文件
set noswapfile
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
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()            " required
filetype plugin indent on    " required
