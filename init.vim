" 基础设置
lua require('basic')

" Packer插件管理
lua require('plugins')


" 快捷键映射
lua require('keybindings')

" 使用系统剪切板
set clipboard+=unnamedplus

" 将tab键拓展为空格
set ts=4


" 主题设置
set background=dark
colorscheme monokai


" 插件配置
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-treesitter')
lua require('lsp/setup')
lua require('lsp/nvim-cmp')
lua require('plugin-config/lualine')
lua require('plugin-config/nvim-autopairs')
lua require('plugin-config/toggleterm')
lua require('plugin-config/symbols-outline')

" vim-go配置
" debug日志输出 不输出debugger rpc信息
let g:go_debug_log_output = ''



" python虚拟环境设置 需要在虚拟环境中安装:python3 -m pip install --user --upgrade pynvim，
let g:python3_host_prog = '/Users/yaoshuilin/miniforge3/envs/pytorch/bin/python3'



" vimspector配置
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'


" 折叠配置 缩进折叠方法
set foldmethod=indent
