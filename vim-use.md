# vim使用经验
### 1怎么用
我是通过putty登录到远程服务器，在终端使用tmux创建session进行工作的，会在session中创建2-3个窗口，每个窗口创建pane，进行开发的。
### 2开始使用前
vim是一款功能强大的编辑器。开始使用vim编辑器之前，需要在电脑上安装vim，linux系统下自带vim编辑器，也可自行安装最近版本vim，windows系统下需下载安装Gvim。Vim 操作以linux操作为例。
### 3 vim基本操作
（1）在命令行下进入vim，（2）进入编辑模式，（3）编辑一段话，（4）退出编辑模式,进入命令模式（5）保存编辑内容（6）退出vim。
```
$vim file.txt 
```
##### 3.2插入文本
vim一共有三种模式：普通模式、编辑模式、命令模式。从普通模式进入插入模式有多种，vim光标占一个字符，（1）在光标前插入`i`，(2)在光标后插入`a`,(3)在光标行的上一行插入`o`，在下行插入`O`,(4)在行首插入`I`,在行尾插入`A`。
插入文本命令：`i、o、a、I、A、O`
##### 3.3普通模式下移动
光标的移动是基础，要修改文本，先移动到想要的位置，在使用vim命令对文本进行编辑。vim把文本位置都定义好了，直接使用vim移动命令即可到达想要的位置，这是vim的一个过人之处，效率也非常高。总结光标移动，(1)上下左右，(2)句中、句首、句尾 (3)文本首尾，屏幕首位以及中间位置。(4)某一行首，(5)括号首尾移动。
- 光标移动命令：`h、j、k、l、H、L M`
- w、b移动到一个单词首或尾。
- `^`、`0`、`$`、`g_`移动到句子头或尾部。
- `f` 行内移动
- `Ctrl+b` 上翻屏
- `Ctrl+F` 下翻屏
- `Ctrl+u` 上滚动
- `Ctrl+d` 下滚动
- `G` 最后一行
- `num G/gg`
- `gg` 移动到第一行
- `zt`、`zb`、`zz` 屏幕区域移动
- % 匹配括号移动包括：`()`、`[]`、`{}`。
- `*`、`#`：匹配光标当前所在的单词，移动光标到下一个或上一个匹配单词。
##### 3.4普通模式下编辑数据
删除字符、单词、句子、行。
- `x`、`s` 
- `dw`
- `dd` `S` `cc` 删除行
- `d$` 删除到行尾
- `dt"` 删除到引号位置
- `r/R` 替换字符
复制粘贴
复制命令y，粘贴命令p。
- `yw` 复制从光标处到单词尾。结合`b`、`w`使用
- `yy` 复制句子
- `nyw`、`nyy`复制多各单词和句子
- `y/foo` 从光标处复制到foo之前的内容。
- `v+hjkl+y` 复制句子、行
#### 3.5普通模式下查找
注意：`.*[]^%?~$<`有特殊意义，需要用`\`转意。
`^`代表行首，`$`代表行尾。
- `^$`      空行
- `the$`	  以the结尾的行
- `^the$`   之后the的行
- `.`       代表任意一个字符
- `c.a`     com became都可以找到
- `:g/^$/d`  删除全文空行
- `:%s/\s\+$//` 行末前的一个或多个`\+`空格`\s`
- `\<`      匹配单词开头
- `\>`      匹配单词结尾
- `/\*`       匹配重复任意次
- `/\(ab\)*` 匹配任意次ab，ab要作为一个整体，需要用小括号括起来。
- `/ab\+/`   匹配ab，abb...
- `\{n,m}`	指定重复前面字符次数，n到m次，n省略时默认为0，m省略时，为无穷大。
- `/ab\{3,5}` b重复3-5次。
- `\{,4}` 0,1,2,3,4
- `\{3}` 3
- `\{1,}` 1或更多，同`\+`
- `\{0,}` 0或更多，同`*`
- `\{0,1}` 0或1，同`\=`
有个文档冒号后面有的有空格有的没有空格，现在想统一冒号后面有一个空格，方法是`:%s/:\s\=/: /g`
- 空格处理，`\s`代表空格，可以匹配到空格，新的内容输入直接使用空格键即可。
- `\|` 或运算符查找匹配
- `/end\(if\|while\|for\)` 匹配endif、endwhile、endfor。

向前搜索和向后搜索
- `/` 向前搜索，n表示下一个。
- `?` 向后搜索，n表示下一个。
- `/`、`?`在键盘的同一个键上。
- `.vimrc`文件设置
```
:set ic              忽略大小写命令，ic为ignore case缩写
:set is              边输入边显示匹配结果，is是incsearch缩写
:set hls             高亮显示匹配结果，hls为highlight search缩写
:set noic nois nohls 取消上述设置
:noh			           暂时取消高亮显示
```
#### 3.6普通模式下替换
- 单文件替换
```
%所有行 g单行内所有匹配项 i忽略大小写 c确认是否替换
```
关键词old替换为new，替换语法： `:[range]s/old/new/[flags]`。
```bash
:s/old/new				 将光标所在行第一个old替换为new
:s/old/new/g	  	 将光标所在行所有old替换为new
:%s/old/new/gc  	 全文执行替换，并询问是否替换
:3,10s/old/new/gc  将第3行到第10行内容替换，且询问是否替换
```
#### 3.7录制宏命令
>qa 开始录入到a，再按q结束录制。@a，执行一次。n@a执行多次。
#### 3.8vim多窗口操作
1. 打开多个窗口
`$vim -o file1 file2` 参数`-o`和`-O`表示上下分割和水平分割。
2. 切换窗口
`ctrl+w+hjklw`在不同窗口之间切换。
`ctrl+w+HJKL`改变布局，移动到不同位置窗口。
3. 窗口交换
`ctrl+w+r`向右或向下交换窗口，`ctrl+w+R`向相反方向交换。
`ctrl+w+x`交换同列或同行的窗口位置。
4. 调整窗口尺寸
`ctrl+w+=` 调整到相同尺寸
`ctrl+w++` 窗口高度增加一行
`ctrl+w+<` 窗口宽度减少一行
`ctrl+w+>` 窗口宽度增加一行
`ctrl+w+|` 窗口宽度调整到最大
`ctrl+w+-` 窗口高度减少一行
### 4 vim插件安装
#### 4.1 vundle插件管理器安装
1. vundle用来安装和管理vim插件
[vundle首页](https://github.com/VundleVim/Vundle.vim)
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim `
2. vundle配置
```
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
```
3 安装插件
打开'vim',运行'PluginInstall'
### 5 合并两个文件
首先在vim中打开一个文件，然后移动光标到最后一行，输入`:r xx.txt`。
### 6 安装vundle
[官网地质](https://github.com/VundleVim/Vundle.vim)
### 7 安装snipmate自动补全
在vundle中安装一下插件
```
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets' "massive common snippets
```
然后在vim中输入
```
:source %
:PluginInstall
```
这个非常重要否则，很容易出现vim加载snipmate失败的情况
还没有完毕，还会出现一个问题。
`The legacy SnipMate parser is deprecated. Please see :h SnipMate-deprecate.`
解决办法就是在vimrc中配置
```
let g:snipMate = { 'snippet_version' : 1 }
``` 
### 8 ranger
```
	sudo apt-get install ranger
```
插件安装
```
	plug 'francoiscabrol/ranger.vim'
```
