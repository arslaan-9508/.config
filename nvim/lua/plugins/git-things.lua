return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "┃" },
          change = { text = "┃" },
          delete = { text = "✗" },
          topdelete = { text = "✗" },
          changedelete = { text = "┃" },
        },
        numhl = true,
        linehl = false,
        word_diff = false,
        current_line_blame = true,
        current_line_blame_opts = {
          virt_text_pos = "eol",
        },
      })
      vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>")
    end,
  },
}
