# vim配置

个人vim配置方案，vim插件采用vundle管理，逐步完善中。

## 项目文件

- **vimrcs/**:vim配置文件
    - **basic.vim**:基本配置
    - **filetypes.vim**:根据文件类型的自动配置(TODO)
    - **plugins.vim**:插件配置
- **bundle/**:vim插件目录
- **install.sh**:生成用户vimrc文件的shell脚本(TODO)

## 安装方法

### 下载

下载配置文件至`~/.vim`中

``` bash
$ git clone https://github.com/ZenLian/.vim.git ~/.vim
```

### 生成vimrc文件

通过shell脚本生成vimrc文件

``` bash
$ ~/.vim/install.sh
```

### 安装插件

vundle通过`git submodule`安装，其他插件通过vundle安装，也可直接`git submodule`安装

``` bash
$ cd ~/.vim
$ git submodule init
$ git submodule update
```

### vundle安装插件

上一步可只安装vundle

``` bash
$ cd ~/.vim
$ git submodule init
$ git submodule update bundle/Vundle.vim
```

然后进入vim，通过vundle安装其他插件，并生成相应help文件。这一步对于生成help文件是必须的。

``` 
:VundleInstall
```

## 插件

- [vim-airline](https://github.com/vim-airline/vim-airline): 强大的vim状态栏插件
- [auto-pairs](https://github.com/jiangmiao/auto-pairs): 括号智能匹配
- [NERDtree](https://github.com/scrooloose/nerdtree): 文件资源浏览插件
    - `F2`开关插件，目录树显示在左侧
- [taglist](https://github.com/vim-scripts/taglist.vim): 代码结构浏览插件
    - `F3`开关插件，taglist显示在右侧
    - `F12`在当前目录下生成ctags文件，后缀为.tags
- [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim.git): 搜索一切(Fuzzy file, buffer, mru and tag... finder)

## 快捷键

`<leader>`键映射为`,`

```
let mapleader=","
```

