-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd("set nofoldenable")

vim.o.clipboard = "unnamedplus"
if vim.fn.executable("clipboard-provider") == 1 then
  vim.g.clipboard = {
    name = "myClipboard",
    copy = {
      ["+"] = "clipboard-provider copy",
      ["*"] = "env COPY_PROVIDERS=tmux clipboard-provider copy",
    },
    paste = {
      ["+"] = "clipboard-provider paste",
      ["*"] = "env COPY_PROVIDERS=tmux clipboard-provider paste",
    },
  }
end
