# 1 让git知道我是谁
git config --global user.email "deviswu@126.com"
git config --global user.name "deviswu"
# 2 解决permission denied (publickey)) 问题
```
ssh-keygen -t rsa -b 2048 -C "deviwu@126.com"
``` 
这个提示要输入两次passphrase，最要输入的密码和github密码一致。
#3  执行
```
ssh-agent bass
```
# 4 然后将SSH key添加到ssh-agent：
```
ssh-add ~/.ssh/id_rsa
```
# 5 打开id_rsa.pub，将里面的内容原样全部复制起来
打开github.com，登入账户，点击头像旁边的下拉按钮，选择settings —- ssh and gpg
keys —— new ssh key —- 粘贴 —- 保存。
最后实现了git与guthub的绑定。
