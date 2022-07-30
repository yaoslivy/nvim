# 个人nvim开发工具配置文件

## 已配置的环境：
1. Go
2. Lua
3. Vue
4. Markdown

## 配置快捷键一览：
|类别|执行操作|快捷键|
|---|---|---|
|Vim自带|定位到行首/行尾部|0/ shift+4|
| | 撤销/恢复之前的操作| u/ control+R |
| |撤销和恢复这一行的操作 | shift+U   |
| |搜索当前文件 | /搜索内容，enter, n：下一个候选值，N：上一个候选值 |
| |快速跳转到指定行 | :行号/ 行号gg |
| |向上翻/向下翻9行|control+u/d|
| |缩进代码 |选择行 > < |
| |水平/垂直分屏 |;+v/h |
| |关闭当前分屏/其他分屏 |;+c/ o |
| |跳转到左下上右窗口中 |;+h/ j/ k/ l |
| |插入模式下使用jk退到命令模式 |jk |
| |快速移动到下一个字符之后输入 |jkla |
|nvim-tree插件 |打开/关闭目录树 |;+n |
| |打开或关闭文件夹，打开文件 |o |
| |预览文件 |tab |
| |创建文件/重命名文件 |a/ r |
| |拷贝/ 剪切/ 粘贴/ 删除 |c/ x/ p/ d |
| |显示/ 关闭隐藏文件 |H |
|bufferline插件 |左/右切换tab |control+h/l |
| |关闭左/右边全部tab |dl/dr|
| nvim-treesitter|格式化代码 |;+i |
| |打开/ 折叠 |zc/ zo |
| LSP系列插件(插入状态)|跳转到定义 |gd |
| |显示提示 | gh|
| |注释 | gcc|
| |自动补全跳转下一个/上一个 |control+j/ k |
| |取消/显示自动补全 |control+ ,/ . |
| | 取消当前行输入| control+u |
| | 同步修改名字|;+rn |
| telescope插件|全局搜索文件名 |;+ff |
| |搜索打开的bufferline |;+fb |
| |搜索帮助命令 |;+fh |
| toggleterm插件|启动/关闭第一个float term |control + \ |
|        |启动/关闭第n个float term |  n + control + \ |
| vim-go插件|启动go debug模式|:GoDebugStart |
||:GoDebugBreakpoint 光标所在行下断点| \<F9> |
| |:GoDebugStep 逐行调试 | \<F10> |
||:GoDebugContinue 逐断点调试| \<F5> |
||结束debug模式| :GoDebugStop |



## 安装的插件:
|名字|链接地址  |
|---|---|
| monokai.nvim|[click](https://github.com/tanvirtin/monokai.nvim) |
| nvim-tree.lua|[click](https://github.com/kyazdani42/nvim-tree.lua) |
| lualine.nvim|[click](https://github.com/nvim-lualine/lualine.nvim) |
| bufferline.nvim|[click](https://github.com/akinsho/bufferline.nvim) |
| nvim-treesitter|[click](https://github.com/nvim-treesitter/nvim-treesitter) |
| nvim-lspconfig|[click](https://github.com/neovim/nvim-lspconfig) |
| nvim-lsp-installer|[click](https://github.com/kabouzeid/nvim-lspinstall) |
|hrsh7th/cmp-nvim-lsp |[click](https://github.com/hrsh7th/cmp-nvim-lsp-signature-help) |
|hrsh7th/cmp-buffer |[click](https://github.com/hrsh7th/cmp-buffer) |
|hrsh7th/cmp-path |[click](https://github.com/hrsh7th/cmp-path) |
| hrsh7th/cmp-cmdline|[click](https://github.com/hrsh7th/cmp-cmdline) |
| hrsh7th/nvim-cmp|[click](https://github.com/hrsh7th/nvim-cmp) |
| hrsh7th/cmp-vsnip|[click](https://github.com/hrsh7th/cmp-vsnip) |
| rafamadriz/friendly-snippets|[click](https://github.com/rafamadriz/friendly-snippets) |
|onsails/lspkind-nvim |[click](https://github.com/onsails/lspkind.nvim) |
| nvim-autopairs|[click](https://github.com/windwp/nvim-autopairs) |
|rainbow |[click](https://github.com/luochen1990/rainbow) |
|markdown-preview.nvim |[click](https://github.com/iamcco/markdown-preview.nvim) |
|symbols-outline.nvim |[click](https://github.com/simrat39/symbols-outline.nvim) |
|nvim-telescope/telescope.nvim |[click](https://github.com/nvim-telescope/telescope.nvim) |
|akinsho/toggleterm.nvim |[click](https://github.com/akinsho/toggleterm.nvim) |
|kommentary|[click](https://github.com/b3nj5m1n/kommentary)
|vim-go|[click](https://github.com/fatih/vim-go)



