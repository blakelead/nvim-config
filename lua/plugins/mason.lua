--
-- plugins/mason
--

local ok, mason = pcall(require, "mason")
if not ok then print("mason plugin not found!"); return end

mason.setup()

--

local ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not ok then print("mason-lspconfig not found!"); return end

mason_lspconfig.setup({
    automatic_installation = true,
    ensure_installed = {
        "clangd"
    }
})

--

local ok, lspconfig = pcall(require, "lspconfig")
if not ok then print("lspconfig not found!"); return end

local on_attach = function(client, bufnr)
    local bufopts = {noremap=true, silent=true, buffer=bufnr}
    vim.keymap.set("n", "gd", vim.lsp.buf.definition , bufopts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration , bufopts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation , bufopts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover , bufopts)
    vim.keymap.set("n", "<leader><leader>", vim.lsp.buf.format , bufopts)
end

lspconfig.clangd.setup({on_attach = on_attach})

--

local ok, mason_null_ls = pcall(require, "mason-null-ls")
if not ok then print("mason-null-ls not found!"); return end

mason_null_ls.setup({
    automatic_installation = true,
    automatic_setup = true,
    ensure_installed = {
        "clang-format"
    }
})  

--

local ok, null_ls = pcall(require, "null-ls")
if not ok then print("null-ls not found!"); return end

null_ls.setup()

