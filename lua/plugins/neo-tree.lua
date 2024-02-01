return {
  "nvim-neo-tree/neo-tree.nvim",
  -- dependencies = {
  --   "nvim-tree/nvim-web-devicons",
  -- },
  opts = {
    sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
    },
    window = {
      width = 30,
      mappings = {
        ["i"] = false, --
        ["u"] = "show_file_details",
        ["l"] = "open",
        ["j"] = "close_node",
      },
      default_component_configs = {
        indent = {
          with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander",
        },
      },
    },
    -- commands = {
    --   nothing = function() end,
    -- },
  },
}

-- https://github.com/nvim-neo-tree/neo-tree.nvim
