-- Stop highlight when <leader><cr> is pressed
vim.keymap.set("n", "<leader><cr>", vim.cmd.noh)

-- Use space to open / close fold
vim.keymap.set("n", "<space>", "za")
vim.keymap.set("n", "<S-space>", "zA")

-- Go across files
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep indent selection
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move lines up / down
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- Copy & Paste helper
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["*y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
