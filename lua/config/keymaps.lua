-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- normal mode
map("i", "jj", "<ESC>", { silent = true })

-- insert mode
map("n", "o", "i", opts)
map("n", "a", "o", opts)

-- Navigate
map({ "n", "v" }, "i", "k", opts)
map({ "n", "v" }, "h", "^", opts)
map({ "n", "v" }, "j", "h", opts)
map({ "n", "v" }, "k", "j", opts)
map({ "n", "v" }, ";", "$", opts)

-- page down // 확인 필요. !!<D-s>
map("", ",", "<C-d>", opts)
-- paste
-- map("n", "p", "<Sp>")

-- Cmd+s
map("n", "<D-s>", ":w<Return>")
map("i", "<D-s>", "<ESC>")

-- comment line -- NOT WORK
-- TODO : command를 찾아야 한다.
-- map({ "n", "v", "i" }, "<D-/>", "gcc", opts)

map("n", "<leader>so", ":source %<Return>", opts)

-- telescope
map("n", "<leader>tp", ":Telescope projects<Return>", opts)
map("n", "<leader>tk", ":Telescope keymaps<Return>", opts)
map("n", "<leader>tc", ":Telescope commands<Return>", opts)
map("n", "<leader>th", ":Telescope help_tags<Return>", opts)

map("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume" })

map("n", "<leader><CR>", "o<Esc>", { desc = "New line below" })
map("n", "<leader><BS>", "O<Esc>", { desc = "New line above" })

-- Delete a word backwards>
map("n", "dw", "vb_d")

-- select all
map("n", "<C-a>", "gg<S-v>G")

-- Jumplist
map("n", "<C-m>", "<C-i>", opts)

-- New tab
map("n", "te", "tabedit", opts)
map("n", "<tab>", ":tabnext<Return>", opts)
map("n", "<S-tab>", ":tabprev<Return>", opts)

-- Split window
map("n", "sp", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)

-- Move window
map("n", "sj", "<C-w>h")
map("n", "si", "<C-w>k")
map("n", "sk", "<C-w>j")
map("n", "sl", "<C-w>l")

-- Resize window
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>+")
map("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
map("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end)

-- place this in one of your configuration file(s)
local hop = require("hop")
local directions = require("hop.hint").HintDirection
map("n", "f", ":HopWord<Return>", opts)
-- vim.keymap.set('', 'F', function()
--   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
-- end, {remap=true})
-- vim.keymap.set('', 't', function()
--   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
-- end, {remap=true})
-- vim.keymap.set('', 'T', function()
--   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
-- end, {remap=true})
