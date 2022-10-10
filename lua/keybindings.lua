-- 保存本地变量
local map = vim.api.nvim_set_keymap -- map('模式','按键','映射为XX',opt)
local opt = {noremap = true, silent = true }

map("i","jk", "<esc>", opt)

map("n", ";u", "9k", opt) -- 移动光标滚动代码， u 和 p 表示 up翻页 和 down翻页。
map("n", ";d", "9j", opt) -- ;+u / +d 设置成移动 9 行

-- visual 模式下可以连续< > 缩进代码
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- normal 模式下粘贴yy的内容，而不是dd的内容
map("n", ';p', '"0p', opt)

-- 分屏相关
map("n", ";s", ":vsp<CR>", opt) -- 水平分屏
map("n", ";v", ":sp<CR>", opt) -- 垂直分屏
map("n", ";c", "<C-w>c", opt) --关闭当前分屏 (close)
map("n", ";o", "<C-w>o", opt) -- close others 关闭其他分屏 (o = other)

-- 比例控制（不常用，因为支持鼠标拖拽）s>s<s=sjsk 分屏比例控制
-- map("n", "s>", ":vertical resize +20<CR>", opt)
-- map("n", "s<", ":vertical resize -20<CR>", opt)
-- map("n", "s=", "<C-w>=", opt)
-- map("n", "sj", ":resize +10<CR>",opt)
-- map("n", "sk", ":resize -10<CR>",opt)

-- 使用 ; + hjkl 在窗口之间跳转 上下左右
map("n", ";h", "<C-w>h", opt)
map("n", ";j", "<C-w>j", opt)
map("n", ";k", "<C-w>k", opt)
map("n", ";l", "<C-w>l", opt)

-- nvimTree
map('n', ';n', ':NvimTreeToggle<CR>', opt)

-- bufferline 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "dl", ":BufferLineCloseLeft<CR>", opt)
map("n", "dr", ":BufferLineCloseRight<CR>", opt)

-- 代码格式化
map("n", ";i", "gg=G", opt)


-- telescope
map('n', ';ff', '<cmd>Telescope find_files<cr>', opt)
map('n', ';fg', '<cmd>Telescope live_grep<cr>', opt)
map('n', ';fb', '<cmd>Telescope buffers<cr>', opt)
map('n', ';fh', '<cmd>Telescope help_tags<cr>', opt)

-- vim-go
map('n', ';<F5>', '<cmd>GoDebugStart<cr>', opt)
map('n', ';<F4>', '<cmd>GoDebugStop<cr>', opt)
map('n', ';<F9>', '<cmd>GoDebugStep<cr>', opt)
map('n', ';<F10>', '<cmd>GoDebugStepOut<cr>', opt)
map('n', '<F4>', '<cmd>GoRun<cr>', opt)

-- Vimspector
map('n', ';<F6>', '<cmd>VimspectorReset<cr>', opt) -- 停止调试，恢复调试前的界面
map('n', ';<F9>', '<Plug>VimspectorStepInto', opt)
map('n', ';<F10>', '<Plug>VimspectorStepOut', opt)
map('n', ';<F7>', '<Plug>VimspectorBreakpoints', opt)

-- Trouble
map('n', ';xx', '<cmd>TroubleToggle<cr>', opt)

-- todo-comment
map('n', ';tt', '<cmd>TodoTelescope<cr>', opt)

-- gitsigns
map('n', ';gj', '<cmd>Gitsigns prev_hunk<cr>', opt)
map('n', ';gk', '<cmd>Gitsigns next_hunk<cr>', opt)
map('n', ';gv', '<cmd>Gitsigns preview_hunk<CR>', opt)

-- spellsitter
map('n', '<leader>sp', '<cmd>set spell<cr>', opt)
map('n', '<leader>nsp', '<cmd>set nospell<cr>', opt)


local pluginKeys = {}

-- lsp 回调函数快捷键设置
-- map("i", "gd", "<CR>]", opt)

pluginKeys.maplsp = function(mapbuf)
    -- rename
    mapbuf('n', ';rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
    -- code action
    mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
    -- go xx
    mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
    mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
    -- mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
    mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
    mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
    -- diagnostic
    mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
    mapbuf('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
    mapbuf('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
    -- mapbuf('n', ';q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
    -- leader + =
    --mapbuf('n', ';=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
    -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
    -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
    -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
    -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
    -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end



-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
    return {
        -- 上一个
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        -- 下一个
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        -- 出现补全
        ['<C-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        -- 取消
        ['<C-,>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        -- 确认
        -- Accept currently selected item. If none selected, `select` first item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        ['<CR>'] = cmp.mapping.confirm({
            select = true ,
            --behavior = cmp.ConfirmBehavior.Replace,
            behavior = cmp.ConfirmBehavior.Insert
        },{"i", "c"}),
        -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        -- ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        -- ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    }
end



return pluginKeys
