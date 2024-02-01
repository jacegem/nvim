return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  init = function()
    vim.keymap.set("n", "<leader>rf", ":FlutterRun<cr>", {})
    vim.keymap.set("n", "<leader>rr", ":FlutterRename<cr>", {})
  end,

  config = true,
  opts = { debugger = { enabled = true } },
}
