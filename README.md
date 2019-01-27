# vim配置

个人vim配置方案，vim插件采用vundle管理，逐步完善中。

## 项目文件

- **vimrcs/**:vim配置文件
- **bundle/**:vim插件目录
- **install.sh**:生成用户vimrc文件的shell脚本

## 安装方法

### 下载

下载配置文件

``` bash
$ git clone --recursive https://github.com/ZenLian/my-vim.git
```

### 生成vimrc文件

通过shell脚本`install.sh`生成vimrc文件.

### 安装插件

通过`git clone`的`--recursive`参数已经将插件下载到`bundle`文件夹中了

然后进入vim，通过vundle安装其他插件，同时生成相应Helptags。

```
:VundleInstall
```

## 快捷键

`<leader>`映射为空格键

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

[Tabular](https://github.com/godlygeek/tabular):

- `:Tab /{pattern}`: 按{pattern}对齐文本

[vim-surround](https://github.com/tpope/vim-surround):

具体键位见原插件网页
- `cs"'`: 将两侧最近的`"`替换为`'`
- `ds"`: 删除两侧的`"`

[ctrlp](https://github.com/ctrlpvim/ctrlp.vim):
[ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky):

模糊搜索及其插件
- `<C-P>`: 模糊搜索
- `<leader>fu`: 模糊搜索函数
- `<leader>fU`: 模糊搜索光标下函数

