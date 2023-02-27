--
-- keymaps
--

-- general keymaps
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- window management
vim.keymap.set("n", "<leader>s", "<C-w>v")
vim.keymap.set("n", "<leader>x", ":close<CR>")
vim.keymap.set("n", "<leader><Left>", "<C-w>h")
vim.keymap.set("n", "<leader><Right>", "<C-w>l")
vim.keymap.set("n", "<leader><Down>", "<C-w>j")
vim.keymap.set("n", "<leader><Up>", "<C-w>k")
