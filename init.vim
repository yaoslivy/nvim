" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')
" 快捷键映射
lua require('keybindings')
" 主题设置
set background=dark
colorscheme monokai

" 插件配置
" 目录树
lua require('plugin-config/nvim-tree')
" 状态栏
lua require('plugin-config/lualine')
" 管理tabs
lua require('plugin-config/bufferline')

" 高亮显示
lua require('plugin-config/nvim-treesitter')
" 启动终端
lua require('plugin-config/toggleterm')
" 搜索
lua require('plugin-config/telescope')

" lsp
lua require('lsp/setup')
" 代码补全
lua require('lsp/nvim-cmp')
" 自动括号
lua require('plugin-config/nvim-autopairs')
" 大纲显示
lua require('plugin-config/symbols-outline')

" 缩进线
lua require('plugin-config/indent_blankline')
" TODO高亮
lua require('plugin-config/todo-comments')
" 显示trouble
lua require('plugin-config/trouble')
" gitsigns
lua require('plugin-config/gitsigns')
" Comment 
lua require('plugin-config/Comment')
" colorizer
lua require('plugin-config/colorizer')
" scrollview
lua require('plugin-config/scrollview')
" 拼写检查
lua require('plugin-config/spellsitter')


" 使用系统剪切板
set clipboard+=unnamedplus
" 将tab键拓展为空格
set ts=4

" vim-go配置
" debug日志输出 不输出debugger rpc信息
let g:go_debug_log_output = ''
" python虚拟环境设置 需要在虚拟环境中安装:python3 -m pip install --user --upgrade pynvim，
let g:python3_host_prog = '$PYROOT/bin/python3'
" vimspector配置
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
" 折叠配置 缩进折叠方法
set foldmethod=indent

