# 个人nvim开发工具配置文件

## 已配置的环境：
1. Go
2. Lua
3. Python
3. Vue
4. Markdown

## 配置快捷键一览：
|类别|执行操作|快捷键|
|---|---|---|
|Vim自带|定位到行首/行尾部|0/ shift+4|
| | 撤销/恢复之前的操作| u/ control+r |
| |撤销和恢复这一行的操作 | shift+u   |
| |搜索当前文件 | /搜索内容，enter, n：下一个候选值，N：上一个候选值 |
| |快速跳转到指定行 | :行号/ 行号gg |
| |向上翻/向下翻半页 整页|control+u/d control+b/f|
| |缩进代码 |选择行 > < |
| |水平/垂直分屏 |;+v/h |
| |关闭当前分屏/其他分屏 |;+c/ o |
| |跳转到左下上右窗口中 |;+h/ j/ k/ l |
| |单词光标移动:下一个词结尾/上一个词结尾/下一次词开头/上一个词开头 | e/ge/w/b |
| |来回在当前括号处跳转 | % |
| |插入模式下使用jk退到命令模式 |jk |
| |快速移动到下一个字符之后输入 |jkla |
| |跳转函数定义/跳回|contron+]/ control+t|
| |函数体之间跳转|[[/ ]]|
| |快速选中当前段落|v+as|
| |快速选中当前光标所在词 复制所在词 剪切所在词|v+iw yiw diw|
| |快速选择光标小括号内的字符 |v+ab |
| |快速剪切当前光标所在的词|normal+diw|
| | 快速复制当前光标所在的词|normal+yiw |
| |快速剪切括号内的所有内容 |normal+di(|
| |快速剪切双/单引号内的内容并进入insert模式|ci"/ci'|
| |复制之前yy的内容，而不是复制dd的内容 | ;+p| 
| |快速在匹配当前光标所在词并向上一个移动|#|
| |快速在匹配当前光标所在词并向下一个移动|*|
| |替换全文a为b /g不询问直接替换 /c询问选择替换 |:%s/a/b + enter :%s/a/b/g  :%s/a/b/c |
| |格式化代码 |;+i |
| |打开/ 折叠 |zc/ zo |
| |打开、折叠当前括号对|za|
| |打开/关闭所有折叠 |zR/ zM |
|nvim-tree插件 |打开/关闭目录树 |;+n |
| |打开或关闭文件夹，打开文件 |o |
| |预览文件 |tab |
| |创建文件/重命名文件 |a/ r |
| |拷贝/ 剪切/ 粘贴/ 删除 |c/ x/ p/ d |
| |显示/ 关闭隐藏文件 |H |
|bufferline插件 |左/右切换tab |control+h/l |
| |关闭左/右边全部tab |dl/dr|
| LSP系列插件|跳转到定义/返回 |gd / ctrl+o |
||跳转到继承处|gi|
||跳转到相关处|gr|
| |显示提示 | gh|
| |注释 | gcc|
||选择第一个自动补全|enter|
| |自动补全跳转下一个/上一个 |control+j/ k |
| |取消/显示自动补全 |control+ ,/ . |
| | 取消当前行输入| control+u |
| | 同步修改名字|;+rn |
| telescope插件|全局搜索文件名 |;+ff |
||全局搜索字符串|;+fb|
| |搜索打开的bufferline |;+fb |
| |搜索帮助命令 |;+fh |
| toggleterm插件|启动/关闭第一个float term |control + \ |
|        |启动/关闭第n个float term |  n + control + \ |
| vim-go插件|启动go debug模式|:GoDebugStart  ;<F5>|
||:GoDebugBreakpoint 光标所在行下断点| \<F9> |
| |:GoDebugStep 逐行调试 | \<F10> |
||:GoDebugContinue 逐断点调试| \<F5> |
||:GoDebugStep 跳入函数体|;\<F9>|
||:GoDebugStepOut 跳出函数体|;\<F10>|
||结束debug模式| :GoDebugStop ;\<F6>|
||运行当前go文件|:GoRun ;\<F4>|
|symbols-outline插件|在右边显示文档结构|:SymbolsOutline|
|vimspector插件|启动调试|\<F5>|
|   |停止调试|;\<F6>|
|   |下断点|\<F9>|
|   |下一步|\<F10>|
|   |步入函数|;\<F9>|
|   |跳出函数|;\<F10>|
|   |列表显示所有断点 删除，禁用单个，禁用所有|;<F7> dd,t,T |


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
|ripgrep|[click](https://github.com/BurntSushi/ripgrep#installation)|
|vimspector|[click](https://github.com/puremourning/vimspector)|

## 快速配置
### CentOS7.6
1. 安装neovim软件
    1. [Release Nvim v0.7.2 · neovim/neovim · GitHub](https://github.com/neovim/neovim/releases/tag/v0.7.2)
2. cd ~/.config
3. git clone https://github.com/yaoslivy/nvim.git
4. 安装 Packer.nvim 插件管理器
    1. git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
5. 输入：nvim，然后输入:PackerSync完成插件下载
6. 需单独clone插件：
    1. git clone https://github.com/fatih/vim-go.git ~/.local/share/nvim/site/pack/plugins/start/vim-go
    2. ripgrep: [install url](https://github.com/BurntSushi/ripgrep#installation)
    3. git clone https://github.com/puremourning/vimspector.git   ~/.local/share/nvim/site/pack/plugins/start/vimspector
7. python环境需要安装python3 -m pip install --user --upgrade pynvim，可以在init.vim中指定虚拟环境路径
8. vimspector配置:
    1. 安装语言adapter：:VimspectorInstall (debugpy/delve)
    2. 设置.vimspector.json配置文件
    ```shell
    cd ~/.local/share/nvim/site/pack/plugins/start/vimspector/configurations/linux
    mkdir python go
    # 设置全局python debug配置文件
    # 需要配置python执行器的全局环境变量PYROOT
    echo "{
        \"configurations\": {
            \"debug cur python\": {
                \"adapter\": \"debugpy\",
                   \"filetypes\": [ \"python\" ],
                    \"configuration\": {
                        \"name\": \"debug python conf\",
                        \"type\": \"python\",
                        \"request\": \"launch\",
                        \"cwd\": \"\${workspaceRoot}\",
                        \"stopOnEntry\": true,
                        \"console\": \"externalTerminal\",
                        \"python\": \"\${PYROOT}/bin/python\", 
                        \"program\": \"\${file}\"
                    }
            }
        }
    }" > python/conf.json

    # 设置全局go debug配置文件
    echo "{
        \"configurations\": {
                \"debug cur go\": {
                    \"adapter\": \"delve\",
                    \"filetypes\": [ \"go\" ],
                    \"variables\": {
                    },
                    \"configuration\": {
                        \"request\": \"launch\",
                        \"program\": \"\${file}\",
                        \"mode\": \"debug\"
                    }
                }
        }
    }" > go/conf.json

    ```


报错解决：
1. [centos7升级gcc 解决make时c99错误_Telda_W的博客-CSDN博客_makefile设置c99](https://blog.csdn.net/qq_23418145/article/details/121162908)
2. vimspector need python3:
    1. 在init.vim修改python3_host_prog配置



### Mac
1. 安装neovim软件：
    1. brew install neovim
2. cd ~/.config
3. git clone https://github.com/yaoslivy/nvim.git
4. 安装 Packer.nvim 插件管理器：
    1. git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
5. 输入：nvim，然后输入:PackerSync完成插件下载
6. 需单独clone插件：
    1. git clone https://github.com/fatih/vim-go.git ~/.local/share/nvim/site/pack/plugins/start/vim-go
    2. ripgrep: [install url](https://github.com/BurntSushi/ripgrep#installation)
    3. git clone https://github.com/puremourning/vimspector.git   ~/.local/share/nvim/site/pack/plugins/start/vimspector
7. python环境需要安装pip install neovim，可以在init.vim中指定虚拟环境路径
8. vimspector配置:
    1. 安装语言adapter：:VimspectorInstall (debugpy/delve)
    2. 设置.vimspector.json配置文件
    ```shell
    cd ~/.local/share/nvim/site/pack/plugins/start/vimspector/configurations/macos
    mkdir python go
    # 设置全局python debug配置文件
    # 需要配置python执行器的全局环境变量PYROOT
    echo "{
        \"configurations\": {
            \"debug cur python\": {
                \"adapter\": \"debugpy\",
                   \"filetypes\": [ \"python\" ],
                    \"configuration\": {
                        \"name\": \"debug python conf\",
                        \"type\": \"python\",
                        \"request\": \"launch\",
                        \"cwd\": \"\${workspaceRoot}\",
                        \"stopOnEntry\": true,
                        \"console\": \"externalTerminal\",
                        \"python\": \"\${PYROOT}/bin/python\", 
                        \"program\": \"\${file}\"
                    }
            }
        }
    }" > python/conf.json

    # 设置全局go debug配置文件
    echo "{
        \"configurations\": {
                \"debug cur go\": {
                    \"adapter\": \"delve\",
                    \"filetypes\": [ \"go\" ],
                    \"variables\": {
                    },
                    \"configuration\": {
                        \"request\": \"launch\",
                        \"program\": \"\${file}\",
                        \"mode\": \"debug\"
                    }
                }
        }
    }" > go/conf.json

    ```

报错解决：
1. error:Import "module" could not be resolved
    1. lsp中pyright问题，解决方案：
    - lsp.config.pyright.lua配置analysis.extraPaths路径，到项目目录
    - 在每个项目目录下配置pyrightconfig.json文件
    ```shell
    echo "{
        \"executionEnvironments\": [
            {\"root\": \"src\"}
        ]
    }" > pyrightconfig.json
    ```


## 效果展示
![](./img/example01.PNG)
![](./img/example02.PNG)
![](./img/example03.PNG)
