-- 自动安装 Packer.nvim
-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
    vim.notify("正在安装Pakcer.nvim，请稍后...")
    paccker_bootstrap = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        -- "https://gitcode.net/mirrors/wbthomason/packer.nvim",
        install_path,
    })

    -- https://github.com/wbthomason/packer.nvim/issues/750
    local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
    if not string.find(vim.o.runtimepath, rtp_addition) then
        vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
    end
    vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
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
            requires = 'kyazdani42/nvim-web-devicons'
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
        -- treesitter
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }
        -- 自动括号
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }
        --彩虹括号
        use 'luochen1990/rainbow'
        -- markdwon预览插件
        use({ "iamcco/markdown-preview.nvim",
            run = "cd app && npm install",
            setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
        })
        -- 大纲栏显示
        use "simrat39/symbols-outline.nvim"
        -- 文件搜索
        use {
            'nvim-telescope/telescope.nvim',
            requires = { {'nvim-lua/plenary.nvim'} }
        }
        -- 启动终端
        use {
            "akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
                require("toggleterm").setup()
            end
        }
        -- 快速注释
        use 'b3nj5m1n/kommentary'
        -- lspconfig
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
        use 'hrsh7th/vim-vsnip'
        use 'rafamadriz/friendly-snippets'
        -- lspkind
        use 'onsails/lspkind-nvim'
        if paccker_bootstrap then
            packer.sync()
        end
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

-- 每次保存 plugins.lua 自动安装插件
-- move to autocmds.lua
-- pcall(
--   vim.cmd,
--   [[
-- augroup packer_user_config
-- autocmd!
-- autocmd BufWritePost plugins.lua source <afile> | PackerSync
-- augroup end
-- ]]
-- )
