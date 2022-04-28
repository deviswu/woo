# ranger
## 安装
sudo apt-get install ranger
## 配置
启动之后ranger会创建一个目录~/.config/ranger 可以使用以下命令复制默认配置文件到这个目录
```
ranger --copy-config=all
```
rc.conf-选项设置和快捷键
commands.py-能通过:执行的命令
commands_full.py-全套命令
rifle.conf-指定不同类型的文件的默认打开程序
scope.conf-负责各种文件预览

注意：如果要使用~/.config/ranger目录下的配置生效，需要把RANGER_LOAD_DEFAULT_RC变量设置为false

```
bash
echo "export RANGER_LOAD_DEFAULT_RC=false">>~/.bashrc

zsh
echo "export RANGER_LOAD_DEFAULT_RC=false">>~/.zshrc
```
## 修改配置
修改配置文件~/.config/ranger/rc.conf
```
显示边框set draw_borders both
显示序号set line_numbers true
序号从1开始set one_indexed true
```
## 配置ranger支持图片预览
```
$ vim ~/.config/ranger/rc.conf
# 开启图片预览
set preview_images true
# 预览图片的方式，因为我这里使用的是iterm2所以配置iterm2，非iterm2可以选择w3m
set preview_images_method iterm2
# 如果开启了图片预览，建议配置预览文件最大限制，因为图片大了会导致卡顿（单位byte）我这里配置的是100KB
set preview_max_size 102400
```
## 配置ranger使用vim编辑器
1. 打开配置文件~/.config/ranger/rifle.conf,找到MIsc
修改下面两行
```
mime ^text, label editor =nvim -- "$@"
!mine ^text, label editor, ext xml|json|csv|tex|ty|rb|js|sh|php| = nvim --"$@"
```


