-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- better escape
keymap.set("i", "jk", "<Esc>", { desc = "exit insert mode with jk", silent = true, noremap = true })
keymap.set("i", "kj", "<Esc>", { desc = "exit insert mode with kj", silent = true, noremap = true })

-- no highligh
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "clear search highlights", silent = true, noremap = true })

-- paste over currently selected text without yanking it
keymap.set("v", "p", '"_dP')
keymap.set("v", "P", '"_dp')

-- map ctrl + a to select all
keymap.set("n", "<C-a>", "ggVG", { desc = "select all", silent = true, noremap = true })

keymap.set("n", "<BS>", "vi'", { desc = "map backto select all inside single quot", silent = true, noremap = true })

keymap.set("n", "<CR>", 'vi"', { desc = "map enter to select all inside double quot", silent = true, noremap = true })

keymap.set(
  "n",
  "x",
  '"_x',
  { desc = "delete a character without affecting the register", silent = true, noremap = true }
)
