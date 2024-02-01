local builtin = require("telescope.builtin")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- change a keymap
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    -- add a keymap to browse plugin files
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
    --https://www.youtube.com/watch?v=zHTeCSVAFNY
    {
      "<C-p>",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "File files",
    },
    { "<leader>fg", builtin.live_grep, desc = "live_grep" },
  },

  -- https://www.youtube.com/watch?v=S-xzYgTLVJE
  {

    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extension = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("flutter")
    end,
  },
}
