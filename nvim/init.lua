local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("vim-options")
require("lazy").setup("plugins")
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<C-l>", builtin.live_grep, { desc = "Telescope live grep" })
vim.cmd([[hi Normal guibg=NONE guifg=NONE]])
vim.cmd([[hi NormalFloat guibg=NONE guifg=NONE]])
vim.cmd([[hi NormalSB guibg=NONE guifg=NONE]])
vim.cmd([[hi SignColumn guibg=NONE guifg=NONE]])
vim.cmd([[hi CursorLine guibg=NONE guifg=NONE]])
vim.cmd([[hi CursorLineNr guibg=NONE guifg=NONE]])
vim.cmd([[hi CursorColumn guibg=NONE guifg=NONE]])
vim.cmd([[hi StatusLine guibg=NONE guifg=NONE]])
vim.cmd([[hi NeoTreeNormal guibg=NONE guifg=NONE]])
vim.cmd([[hi NeoTreeNormalNC guibg=NONE guifg=NONE]])
vim.cmd([[hi NeoTreeEndOfBuffer guibg=NONE guifg=NONE]])
vim.cmd([[hi FloatBorder guibg=NONE guifg=NONE]])
vim.cmd([[hi NormalNC guibg=NONE guifg=NONE]])
vim.cmd([[hi TelescopeBorder guibg=NONE guifg=NONE]])
vim.cmd([[hi TelescopeNormal guibg=NONE guifg=NONE]])
vim.cmd([[hi TelescopePromptBorder guibg=NONE guifg=NONE]])
vim.cmd([[hi TelescopePromptNormal guibg=NONE guifg=NONE]])
vim.cmd([[hi TelescopeResultsBorder guibg=NONE guifg=NONE]])
vim.cmd([[hi TelescopeResultsNormal guibg=NONE guifg=NONE]])
vim.cmd([[hi TelescopePreviewBorder guibg=NONE guifg=NONE]])
vim.cmd([[hi TelescopePreviewNormal guibg=NONE guifg=NONE]])
vim.cmd([[hi EndOfBuffer guibg=NONE guifg=NONE]])
vim.cmd([[hi WinSeparator guibg=NONE guifg=NONE]])
vim.cmd([[hi LineNr guibg=NONE guifg=NONE]])
