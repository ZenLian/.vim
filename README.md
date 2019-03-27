# vim配置

个人vim配置方案，采用vim-plug管理插件

## 项目文件

- **vimrcs/**: vim配置文件
- **autoload/plug.vim**: vim-plug插件
- **tmp/**: 临时目录，存放vimundo文件等
- **install.sh**: 生成用户vimrc文件的shell脚本

## 安装方法

### 下载

下载配置文件

``` bash
$ git clone https://github.com/ZenLian/my-vim.git
```

### 生成vimrc文件

通过shell脚本`install.sh`生成vimrc文件.

### 安装插件

``` shell
$ vim +PlugInstall!
```

## 快捷键

`<leader>`映射为空格键

### 普通快捷键

- 快速保存(`<leader>w`)
- 关闭搜索高亮(`<leader><cr>`)
- 关闭当前buffer(`<leader>bd`)
- 上下切换buffer(`[b`/`]b`)
- 切换至指定buffer(`<leader>[0-9]`)
- 切换窗口(`<Ctrl>+h/j/k/l>`)


### 插件相关

#### [NERDtree](https://github.com/scrooloose/nerdtree):

- `F2`: 打开/关闭目录树

#### [tagbar](https://github.com/majutsushi/tagbar):

- `F3`: 打开/关闭tagbar
- `F12`: 在当前目录下生成ctags文件，后缀为.tags

#### [cscope](https://github.com/brookhong/cscope.vim.git)

tag跳转
- `g[`: 查看函数调用
- `<leader>fa`: 查找tag, 同命令`:cs find`, 见`:help cscope-find`
- `<leader>l`: 打开/关闭location list

#### [vim-gitgutter](https://github.com/airblade/vim-gitgutter.git):

- `[c`/`]c`: 跳至下一处/上一处改动
- `<leader>hp`: 查看改动

#### [OmniCppComplete](https://github.com/vim-scripts/OmniCppComplete.git):

- `<Ctrl-X><Ctrl-O>`: 展开自动补全窗口

#### [Tabular](https://github.com/godlygeek/tabular):

- `:Tab /{pattern}`: 按{pattern}对齐文本

#### [vim-surround](https://github.com/tpope/vim-surround):

具体键位见原插件网页
- `cs"'`: 将两侧最近的`"`替换为`'`
- `ds"`: 删除两侧的`"`
- 在Visual模式下`S"`: 选中文本的两侧加上`"`

#### [vim-commentary](https://github.com/tpope/vim-commentary)

快速注释与解注释

- `gcc`: 注释/解注释单行
- `gcap`: 注释一段
- `gcu`/`gcgc`: 解注释相邻几行


#### [ctrlp](https://github.com/ctrlpvim/ctrlp.vim):
#### [ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky):

模糊搜索及其插件
- `<C-P>`: 模糊搜索
- `<leader>fu`: 模糊搜索函数
- `<leader>fU`: 模糊搜索光标下函数

#### [vim-easymotion](https://github.com/easymotion/vim-easymotion.git)

快速移动，`<leader><leader>`触发
- `j/k/w/b/f/F/t/T`: 与原vim移动指令类似
- `s{char}`: 搜索移动

#### [neocomplete/neosnippet]()

自动补全插件, 输入时自动弹出补全窗口

- 上下选择: `<C-N>/<C-P>`或`<Tab>/<S-TAB>`
- `<C-K>`: 自动补全代码片段，再按`<C-K>`或`<TAB>`跳至该片段的下一处
- `<C-Y>`: 关闭补全窗口

## TODO LIST

### TODO

-[ ] 同时具备basic, advanced版本
-[ ] undotree: undo历史记录

### DONE

-[x] 按spf13-vim的形式改写vimrc
-[x] vim-surround: surround
-[x] neocomplete: 替代omnicppcomplete
-[x] neosnippet: 补全代码段
-[x] tabular: 对齐文本
-[x] luochen1990/rainbow: 不同层次括号不同颜色
-[x] easy-motion: 快速移动插件
-[x] nerdcommenter|vim-commentary: 注释插件
-[x] 异步插件管理器vim-plugin替代Vundle
-[x] tagbar: 替代taglist
-[x] ale: 语法检查
