--
-- plugins/nvim-treesitter
--

local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then return end

treesitter.setup({
    auto_install = true,
    indent = { enable = true },
    -- list of parser names
    ensure_installed = {
        "bash",
        "c",
        "cmake",
        "comment",
        "cpp",
        "css",
        "diff",
        "dockerfile",
        "gitignore",
        "glsl",
        "go",
        "haskell",
        "help",
        "html",
        "javascript",
        "json",
        "lua",
        "make",
        "markdown",
        "python",
        "terraform",
        "toml",
        "vim",
        "yaml"
    }
})
