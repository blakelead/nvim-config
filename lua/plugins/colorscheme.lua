--
-- plugins/colorscheme
--

local colorscheme = "everforest"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then print("Coloscheme " .. colorscheme .. " not found!"); return end
