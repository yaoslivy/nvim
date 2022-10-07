-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("没有安装 packer.nvim")
    return
end

packer.startup({
    function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
        -- 主题·
        use 'tanvirtin/monokai.nvim'
        -- nvim-tree 
        use {
            'kyazdani42/nvim-tree.lua',
            requires = {
                'kyazdani42/nvim-web-devicons', -- optional, for file icons
            },
            tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }
        --状态栏插件
        use {
            "nvim-lualine/lualine.nvim",
            requires = {"kyazdani42/nvim-web-devicons", opt = true}
        }
        -- bufferline 
        use {
            'akinsho/bufferline.nvim',
            requires = 'kyazdani42/nvim-web-devicons'
        }
        -- 启动终端
        use {
            "akinsho/toggleterm.nvim", tag = '*', config = function()
                require("toggleterm").setup()
            end
        }
        -- treesitter 高亮显示
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }

        -- 文件搜索
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            -- or                            , branch = '0.1.x',
            requires = { {'nvim-lua/plenary.nvim'} }
        }
        -- 快速注释
        use 'b3nj5m1n/kommentary'

        -- lsp
        use {
            'neovim/nvim-lspconfig',
            'williamboman/nvim-lsp-installer'
        }
        -- nvim-cmp
        use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }--neovim 内置 LSP 客户端的 nvim-cmp 源
        use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },--从buffer中智能提示
        use 'hrsh7th/cmp-path'     -- { name = 'path' }--自动提示硬盘上的文件
        use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
        use 'hrsh7th/nvim-cmp'
        -- vsnip
        use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
        use 'hrsh7th/vim-vsnip'     -- snippet 引擎，就是自定义代码段
        use 'rafamadriz/friendly-snippets' -- 常用语言片段
        -- lspkind
        use 'onsails/lspkind.nvim' -- 在代码提示中，显示分类图标

        -- 自动括号
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }
        -- markdwon预览插件
        use({ "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
    })
    -- 大纲栏显示
    use "simrat39/symbols-outline.nvim"
end,
config = {
    -- 锁定插件版本在snapshots目录
    -- snapshot_path = require("packer.util").join_paths(vim.fn.stdpath("config"), "snapshots"),
    -- 这里锁定插件版本在v1，不会继续更新插件
    -- snapshot = "v1",

    -- 最大并发数
    max_jobs = 16,
    -- 自定义源
    git = {
        -- default_url_format = "https://hub.fastgit.xyz/%s",
        -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
        -- default_url_format = "https://gitcode.net/mirrors/%s",
        default_url_format = "https://gitclone.com/github.com/%s",
    },
    display = {
        -- 使用浮动窗口显示
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    },
},
})

