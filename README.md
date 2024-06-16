## Vim如何安装插件

### 安装vim-plug

一些最著名的插件管理器包括 Vundle、VAM、vim-plug、pathogen 等。
插件管理器的优点是您无需手动创建文件夹结构，并且更容易自动更新包。
让我们通过 vim-plug 安装一个插件。它在 Vim 社区中被广泛使用，因此得到了很大的社区支持，并且有很好的文档记录。
通过以下命令安装，这会将`vim-plug`安装在你的`~/.vim/autoload/plug.vim`目录下：
```bash
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

安装好后我们需要配置一下.vimrc文件：
```bash
$ vim ~/.vimrc

# 将以下内容添加进入
call plug#begin()
call plug#end()
```
如果想要安装插件，就在这两行中间加入即可，格式如下：
```bash
Plug 'Plug-name'
```

### 安装nerdtree

添加进入.vimrc:
```bash
$ vim ~/.vimrc
# 将以下内容添加进入两行内 
Plug 'preservim/nerdtree'
```

重启vim或者source一下，进入vim后输入如下指令：
```bash
:PlugInstall
```
即可安装成功，如若出现如下提示：
```bash
fatal: could not read Username for 'https://github.com': terminal prompts disabled
```
则配置好ssh密钥后去这里寻找答案：https://stackoverflow.com/questions/59797272/receiving-fatal-could-not-read-username-for-https-github-com-terminal-prom


ref:
https://stackoverflow.com/questions/59797272/receiving-fatal-could-not-read-username-for-https-github-com-terminal-prom
https://www.linuxmi.com/vim-install-plugins.html
https://blog.csdn.net/weixin_45859128/article/details/120366165
https://www.cnblogs.com/zhaodehua/articles/15108744.html
