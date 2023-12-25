-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 30,
      mappings = {
        --
        ["i"] = false, --
        ["u"] = "show_file_details",
        ["l"] = "open",
        ["j"] = "close_node",
      },
    },
    commands = {
      nothing = function() end,
    },
  },
}
