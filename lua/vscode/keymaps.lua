local keymap = vim.keymap
local opts = { silent = true, noremap = true }

-- map leader key
-- vim.g.mapleader = " "

-- navigation between windows.
keymap.set("n", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', opts)
keymap.set("x", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', opts)
keymap.set("n", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', opts)
keymap.set("x", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', opts)
keymap.set("n", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', opts)
keymap.set("x", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', opts)
keymap.set("n", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', opts)
keymap.set("x", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', opts)

keymap.set("n", "gr", ':call VSCodeNotify("editor.action.goToReferences")<CR>', opts)

-- undo redo like vscode.
keymap.set("n", "u", ':call VSCodeNotify("undo")<CR>', opts)
keymap.set("n", "U", ':call VSCodeNotify("redo")<CR>', opts)
keymap.set("n", "<C-r>", ':call VSCodeNotify("redo")<CR>', opts)
