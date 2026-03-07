return {
  "norcalli/nvim-colorizer.lua",
  event = "VeryLazy",
  config = function()
    require("colorizer").setup({
      "*", -- Highlight all files, but customize some others.
      css = { rgb_fn = true }, -- Enable parsing rgb(...) functions in css.
      html = { names = false }, -- Disable parsing "names" in html.
    }, {
      RGB = true, -- #RGB hex codes
      RRGGBB = true, -- #RRGGBB hex codes
      names = true, -- "Name" codes like Blue or blue
      RRGGBBAA = true, -- #RRGGBBAA hex codes
      rgb_fn = true, -- CSS rgb() and rgba() functions
      hsl_fn = true, -- CSS hsl() and hsla() functions
      mode = "foreground", -- Set the display mode to background
    })
  end,
}
