--
-- plugins/cmp
--

local ok, cmp = pcall(require, "cmp")
if not ok then print("cmp not found!") return end

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), 
    }),
  snippet = { expand = function(args) vim.fn["vsnip#anonymous"](args.body) end },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }
  }),
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  }
})
