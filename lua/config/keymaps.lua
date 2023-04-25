-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
--

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("i", "jk", "<esc>", { desc = "Esc key" })
map("n", ";n", "<cmd>Neotree toggle<cr>", { desc = "Neotree toggle" })

map("n", ";h", "<C-w>h", { desc = "Go to left window" })
map("n", ";j", "<C-w>j", { desc = "Go to lower window" })
map("n", ";k", "<C-w>k", { desc = "Go to upper window" })
map("n", ";l", "<C-w>l", { desc = "Go to right window" })

map("n", ";u", "9k", { desc = "Go up 9 lines" })
map("n", ";d", "9j", { desc = "Go down 9 lines" })

map("n", ";ff", "<cmd>Telescope find_files<cr>", { desc = "find_files" })
map("n", ";fg", "<cmd>Telescope live_grep<cr>", { desc = "live_grep" })

map("n", ";wc", "<C-w>c", { desc = "close current window" })

map("n", ";p", '"0p', { desc = "paste yy content" })

map("n", ";i", "gg=G", { desc = "Format the code" })

-- Vimspector
map("n", "<F5>", "<Plug>VimspectorContinue", { desc = "When debugging, continue. Otherwise start debugging." })
map("n", "<F6>", "<cmd>VimspectorReset<cr>", { desc = "Stop debugging" })
map("n", "<F9>", "<Plug>VimspectorToggleBreakpoint", { desc = "Toggle line breakpoint on the current line." })
map("n", "<F10>", "<Plug>VimspectorStepOver", { desc = "Step Over" })
map("n", "<F7>", "<Plug>VimspectorStepInto", { desc = "Step Into" })
map("n", "<F8>", "<Plug>VimspectorStepOut", { desc = "Step out of current function scope" })

-- gitsigns
map("n", ";gj", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Git prev_hunk" })
map("n", ";gk", "<cmd>Gitsigns next_hunk<cr>", { desc = "Git next_hunk" })
map("n", ";gv", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Git preview_hunk" })
map("n", ";ghr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Git reset_hunk" })

-- todo-comment
map("n", ";tt", "<cmd>TodoTelescope<cr>", { desc = "TodoTelescope list" })

-- Trouble
map("n", ";xx", "<cmd>TroubleToggle<cr>", { desc = "Trouble list" })

-- ChatGPT
map("n", ";cg", "<cmd>ChatGPT<cr>", { desc = "Open ChatGPT" })
