return {
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
  { "catppuccin/nvim" },
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  -- {
  --   "AlexvZyl/nordic.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("nordic").load()
  --   end,
  -- },
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("bamboo").setup({
        -- optional configuration here
        style = "multiplex",
        -- colors = {
        --   bright_orange = "#ff8800", -- define a new color
        --   green = "#00ffaa", -- redefine an existing color
        -- },
        highlights = {
          -- make comments blend nicely with background, similar to other color schemes
          ["@comment"] = { fg = "$grey" },

          -- ["@keyword"] = { fg = "$green" },
          -- ["@string"] = { fg = "$bright_orange", bg = "#00ff00", fmt = "bold" },
          -- ["@function"] = { fg = "#0000ff", sp = "$cyan", fmt = "underline,italic" },
          -- ["@function.builtin"] = { fg = "#0059ff" },
        },
      })
      require("bamboo").load()
    end,
  },
  { "luisiacc/gruvbox-baby" },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      -- colorscheme = "gruvbox",
      -- colorscheme = "catppuccin",
      colorscheme = "bamboo",
    },
  },
}
