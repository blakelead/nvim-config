--
-- plugins/nvim-tree
--

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local ok, tree = pcall(require, "nvim-tree")
if not ok then return end

tree.setup()

-- keymaps
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
