# vim配置

个人vim配置方案，vim插件采用vundle管理，逐步完善中。

## 项目文件

- **vimrcs/**:vim配置文件
    - **basic.vim**:基本配置
    - **filetypes.vim**:根据文件类型的自动配置(TODO)
    - **plugins.vim**:插件配置
- **bundle/**:vim插件目录
- **install.sh**:生成用户vimrc文件的shell脚本
- **install_win.sh**:windows下安装脚本

## 安装方法

### 下载

下载配置文件至`~/.vim/`中

``` bash
$ git clone https://github.com/ZenLian/.vim.git ~/.vim
```

### 生成vimrc文件

通过shell脚本`install.sh`生成vimrc文件. windows下运行`install_win.sh`.

### 安装插件

有两种安装方法:

#### 1. vundle通过`git submodule`安装，其他插件通过vundle安装

- 通过`git submodule`安装vundle

``` bash
$ cd ~/.vim
$ git submodule init
$ git submodule update bundle/Vundle.vim
```

- 然后进入vim，通过vundle安装其他插件，同时生成相应Helptags。

```
:VundleInstall
```

#### 2. 所有插件都通过`git submodule`安装

``` bash
$ cd ~/.vim
$ git submodule init
$ git submodule update
```

## 插件

- [vim-airline](https://github.com/vim-airline/vim-airline): 强大的vim状态栏插件
- [auto-pairs](https://github.com/jiangmiao/auto-pairs): 括号智能匹配
- [NERDtree](https://github.com/scrooloose/nerdtree): 文件资源浏览插件
- [taglist](https://github.com/vim-scripts/taglist.vim): 代码结构浏览插件
- [cscope](https://github.com/brookhong/cscope.vim.git): tag跳转
- [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim.git): 搜索一切(Fuzzy file, buffer, mru and tag... finder)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter.git): git插件
- [OmniCppComplete](https://github.com/vim-scripts/OmniCppComplete.git): C/C++全能补全

## 快捷键

`<leader>`映射为`,`

### 普通快捷键

- 快速保存(`<leader>w`)
- 关闭搜索高亮(`<leader><space>`)
- 关闭当前buffer(`<leader>bd`)
- 上下切换buffer(`[b`/`]b`)
- 切换至指定buffer(`<leader>[0-9]`)
- 切换窗口(`<Ctrl>+h/j/k/l>`)


### 插件相关快捷键

[NERDtree](https://github.com/scrooloose/nerdtree):

- `F2`: 打开/关闭目录树

[taglist](https://github.com/vim-scripts/taglist.vim):

- `F3`: 打开/关闭taglist
- `F12`: 在当前目录下生成ctags文件，后缀为.tags

[cscope](https://github.com/brookhong/cscope.vim.git): tag跳转

- `g[`: 查看函数调用
- `<leader>fa`: 查找tag, 同命令`:cs find`, 见`:help cscope-find`
- `<leader>l`: 打开/关闭location list

[vim-gitgutter](https://github.com/airblade/vim-gitgutter.git):

- `[c`/`]c`: 跳至下一处/上一处改动

[OmniCppComplete](https://github.com/vim-scripts/OmniCppComplete.git):

- `<Ctrl-X><Ctrl-O>`: 展开自动补全窗口

