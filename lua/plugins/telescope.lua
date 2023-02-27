--
-- plugins/telescope
--

local ok, telescope = pcall(require, "telescope")
if not ok then return end

local ok, telescope_builtin = pcall(require, "telescope.builtin")
if not ok then return end

telescope.setup()
telescope.load_extension("fzf")

-- keymaps
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>ft", telescope_builtin.treesitter, {})
vim.keymap.set("n", "<leader>gc", telescope_builtin.git_commits, {})
vim.keymap.set("n", "<leader>gb", telescope_builtin.git_branches, {})
vim.keymap.set("n", "<leader>gs", telescope_builtin.git_status, {})
