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


" 皮肤设置
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



