# 一、系统源修改
上阿里源，有详细教程进行修改。 
# 二、ssh服务安装
```
sudo apt-get install openssh-server
```
# 三、texlive、curl、nodejs、git、vim、tmux安装
vim安装直接支持python3，vim安装参考github上自己的安装文档。
nodejs官网debian安装教程
```
	https://github.com/nodesource/distributions/blob/master/README.md
```
# 四、ubuntu启动后进入命令行模式
禁用图形用户界面
1. 下面的命令将在启动时禁用GUI，因此在重新启动时，系统将启动到多用户目标：
```
sudo systemctl set-default multi-user
```
2. 重新启动，或使用如下命令从当前会话注销以退出GUI：
```
gnome-session-quit
```
启用图形用户界面启动系统
1. 假设你已经在Ubuntu 20.04 Server/Desktop上安装了图形用户界面，你可以通过执行以下命令来启用图形用户界面：
```
sudo systemctl set-default graphical
```
2. 从命令行手动启动GUI
```
sudo systemctl start gdm3
```
# 五、ubuntu笔记本设置盒盖不休眠 
```
	sudo vim /etc/systemd/logind.conf
```
找到其中一行：
```
	#HandleLidSwitch=suspend
```
将其改为
```
	HandleLidSwitch=ignore
```
然后重启服务
[参考网页](://www.jianshu.com/p/3fe469fc60c9)

# 六、静态ip地址配置
首先需要用ip a
命令查看一下配置网卡的名称，这是最关键的一步，好几次自己在这个地方都没有配置成功主要是因为这里。
然后打开`/etc/netplan/xxx-newwork-manager-all.yaml`,对其进行配置。
# 七、python服务器共享文件
```
	python -m http.server 8000
```
直接在浏览器中访问相应ip地址即可。
