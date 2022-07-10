return require('packer').startup(function()
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



end)
