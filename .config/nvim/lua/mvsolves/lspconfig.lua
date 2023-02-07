local capabilities = require('mvsolves.completion')

local on_attach = function(client, bufnr)

  -- Jump to errors
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {buffer=0})
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)

  -- Test keymap
  vim.keymap.set('n', 'gT', function()
    print("Testing to see if key mappings work")
  end, bufopts)

  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format {async = true} end, bufopts)

end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}











---- Per language configurations --------

require('lspconfig').sumneko_lua.setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,

  settings = {
    Lua = {
      diagnostics =
      {
        globals = {'vim', 'opts'}
      }
    }
  }
}

require('lspconfig').pyright.setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
}

require('lspconfig').clangd.setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
}
