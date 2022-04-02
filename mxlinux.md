# 一、双系统安装安装
一个月之前安装并没有安装为双系统，2022年3月6日成功安装双系统，关键问题需要。安装步骤：
- MX linux官网下在系统
- 下载[rufus](https://rufus.ie) u盘安装工具。需要主要的是**分区类型**选择**MBR**和**目标系统类型**选择**uefi**模式，**文件格式**选择***NTFS**格式。
- 重要提示，进入电脑bios，关闭安全启动项（Secure Boot）。（我的电脑是通过uefi必须关闭，否则不能启动。）
- 安装完成之后，重起电脑。
# 二、MXlinux安装输入法
## 1. 添加中文支持
从system locales 找到中文支持，然后安装。
## 2. 直接在linux搜狗主页下载xxx.deb文件。
```
$sudo dpkg -i xxx.deb
```
## 3. 如果少了依赖
```
$sudo apt -f install
```
# 三、MXlinux分屏
1.选择窗口
2.ctrl + 方向键 

# 四、软件安装
## 1 kazam
kazam是一个非常好用的linux录屏幕软件。
## 2 python、vim、git
这三个软件系统已经内置，不需要在安装。
## 3 nodejs
这个需要根据官网的安装方法（github上）进行安装，切忌去其他地方搜索安装方法。可以通过'apt-get'软件管理工具安装非常的方便。
## 4 terminalizer
这是一个终端记录软件可以生成gif文件。
## 5 bspwm窗口管理器的使用。
当我想打开是搜索的时候，我可以(1)使用快捷键打开浏览器，然后按o输入想要查找的内容。
## 6 ssh实现自动登录远程服务器
ssh本身并不提供密码参数实现自动登录远程服务器，需要借助sshpass工具。首先安装`sudo apt-get install sshpass`，然后登录`sshpass -p xxx ssh xxx@192.168.xx.xx`

# 五、解决双系统时间不一致问题
```
sudo apt-get install ntpdate
sudo ntpdate time.windows.com
sudo hwclock --localtime --systohc
```
