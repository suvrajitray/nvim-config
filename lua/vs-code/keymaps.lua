local vscode = require("vscode")
local keymap = vim.keymap
local opts = { silent = true, noremap = true }

-- vim.g.mapleader = " "

-- navigation between windows.
keymap.set("n", "<C-j>", function()
  vscode.call("workbench.action.navigateDown")
end, opts)
keymap.set("x", "<C-j>", function()
  vscode.call("workbench.action.navigateDown")
end, opts)
keymap.set("n", "<C-k>", function()
  vscode.call("workbench.action.navigateUp")
end, opts)
keymap.set("x", "<C-k>", function()
  vscode.call("workbench.action.navigateUp")
end, opts)
keymap.set("n", "<C-h>", function()
  vscode.call("workbench.action.navigateLeft")
end, opts)
keymap.set("x", "<C-h>", function()
  vscode.call("workbench.action.navigateLeft")
end, opts)
keymap.set("n", "<C-l>", function()
  vscode.call("workbench.action.navigateRight")
end, opts)
keymap.set("x", "<C-l>", function()
  vscode.call("workbench.action.navigateRight")
end, opts)

-- split windows
keymap.set("n", "<leader>wv", function()
  vscode.call("workbench.action.splitEditor")
end, opts)
keymap.set("n", "<leader>|", function()
  vscode.call("workbench.action.splitEditor")
end, opts)
keymap.set("n", "<leader>wh", function()
  vscode.call("workbench.action.splitEditorDown")
end, opts)
keymap.set("n", "<leader>-", function()
  vscode.call("workbench.action.splitEditorDown")
end, opts)

keymap.set("n", "gr", function()
  vscode.call("editor.action.goToReferences")
end, opts)

keymap.set("n", "gi", function()
  vscode.call("editor.action.goToImplementation")
end, opts)

-- undo redo like vscode.
keymap.set("n", "u", function()
  vscode.call("undo")
end, opts)

keymap.set("n", "U", function()
  vscode.call("redo")
end, opts)

keymap.set({ "n", "x", "i" }, "<C-d>", function()
  vscode.with_insert(function()
    vscode.action("editor.action.addSelectionToNextFindMatch")
  end)
end)

keymap.set({ "n", "x" }, "<leader>r", function()
  vscode.with_insert(function()
    vscode.action("editor.action.refactor")
  end)
end)
