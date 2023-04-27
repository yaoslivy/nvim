-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

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
