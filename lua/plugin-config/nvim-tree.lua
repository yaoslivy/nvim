-- https://github.com/kyazdani42/nvim-tree.lua
-- local nvim_tree = require'nvim-tree'
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("没有找到 nvim-tree")
    return
end

-- 列表操作快捷键
local list_keys = require("keybindings").nvimTreeList

nvim_tree.setup({
    -- 完全禁止内置netrw
    disable_netrw = true,
    -- 不显示 git 状态图标
    git = {
        enable = false,
    },
    -- project plugin 需要这样设置
    update_cwd = true,
    update_focused_file = {
        enable = true, -- false: gd跳转时不更新目录
        update_cwd = true,
        update_root = true,
    },
    prefer_startup_root = true, -- 更新树的根目录时首选启动根目录。need update_focused_file.update_root = true
    filters = {
        -- 隐藏 .文件
        dotfiles = true,
        -- 隐藏的文件夹
        custom = {
            "node_modules"
        },
    },
    view = {
        -- 宽度
        width = 34,
        -- 也可以 'right'
        side = "left",
        -- 隐藏根目录
        hide_root_folder = false,
        -- 自定义列表中快捷键
        mappings = {
            -- 只用内置快捷键
            custom_only = true,
            list = list_keys,
        },
        -- 不显示行数
        number = false,
        relativenumber = false,
        -- 显示图标
        signcolumn = "yes",
    },
    actions = {
        open_file = {
            -- 首次打开大小适配
            resize_window = true,
            -- 打开文件时关闭 tree
            quit_on_open = false,
        },
    },
    -- wsl install -g wsl-open
    -- https://github.com/4U6U57/wsl-open/
    system_open = {
        -- mac
        cmd = "open",
        -- windows
        -- cmd = "wsl-open",
    },
})
