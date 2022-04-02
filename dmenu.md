# dmenu安装
dmenu是一款非常小巧的程序启动器。
## 1 下载dmenu
[下载地址](https://tools.suckless.org/dmenu/)
## 2 安装dmenu
解压dmenu-xxx.tar.gz
```
$tar -zxvf dmenu-xxx.tar.gz
$ cd dmenx
$ sudo make clean install
```
解决X11/X1ib.h：没有那个文件或目录问题。
```
$sudo apt-cache search x11-dev
$sudo apt-get install libx11-dev x11-dev
libgtkglextmm-x11-1.2-dev librust-x11-dev
libghc-x11-dev
```
再次执行
```
$ sudo make clean install
```
进行安装。
## 3 使用
按键`super+space`输入你想要打开的程序。

