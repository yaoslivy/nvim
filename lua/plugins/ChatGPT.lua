return {
  "jackMort/ChatGPT.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("chatgpt").setup({
      chat = {
        keymaps = {
          close = { "<Esc>", ";cg" },
          yank_last = "<C-y>",
          scroll_up = "<C-u>",
          scroll_down = "<C-d>",
          toggle_settings = "<C-o>",
          new_session = "<C-n>",
          cycle_windows = "<Tab>",
        },
      },
      popup_input = {
        submit = "<Enter>",
      },
      popup_layout = {
        relative = "editor",
        position = "50%",
        size = {
          height = "80%",
          width = "80%",
        },
      },
    })
  end,
}
