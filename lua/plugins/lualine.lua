--
-- plugins/lualine
--

local ok, lualine = pcall(require, "lualine")
if not ok then return end

local ok, lualine_theme = pcall(require, "lualine.themes.everforest")
if not ok then return end

lualine.setup({
    options = {
        icons_enabled = true,
        theme = lualine_theme
    }
})
