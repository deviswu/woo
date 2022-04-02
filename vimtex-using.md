# vimtex安装与使用
## 1 texlive-full安装
```
$sudo apt-get install texlive-full
```
打开终端，直接安装。
## 2 vimtex安装
使用vundle插件管理器安装，在vimrc文件中添加
`Plugin 'lervag/vimtex'`
保存后打开vim，输入`PluginInstall`安装即可。
## 3 vimtex常用命令
- \ll 编译文件(注意：\ll执行后，表示进入continuous mode，每次编辑过后，:w保存文档，对应的pdf就会自动更新)
- \lk(或\lk) 停止编译(注意：当执行\lk或再次执行\ll后，表示退出continuous mode，:w保存文档，对应的pdf就不会自动更新)
- \lv打开pdf阅读器查看文档，或在pdf文档已经打开的情况下向前搜索pdf中对应的目前光标所在位置的内容
- \lt 打开目录(通过目录进行跳转)
		- Esc或q推出
		- space跳转
		- Enter跳转并关闭
- \li查看latex项目信息
## 4 vimtex配置
```
""""""""""""""""""""""""""""""""
"vimtex配置
""""""""""""""""""""""""""""""""
"let g:vimtex_view_method = 'evince'
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_quickfix_open_on_warning=0
"let g:tex_flavor='latex'
"中文支持
let g:Tex_ComileRule_pdf = 'xelatex -synctex=1 --interaction=nonstopmode $*'
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines = {'_':'xelatex'}
"自动隐藏功能
set conceallevel=1
let g:tex_conceal='abdmg'
"配置latex
autocmd Filetype tex setl updatetime=3
```
## 5 使用方法
我是在MXlinux下使用bspwm窗口管理器里面打开vim,进行编辑latex文件，使用vimtex进行动态编译，当编辑好文件之后，点击`\ll`进入动态编译模式，通过保存文件，pdf文件会自动更新，zathura可以向使用vim一样查看文本，非常的方便。
