-- Load lsp-zero v3
local lsp_zero = require('lsp-zero')


-- Enable LSP configuration extension
lsp_zero.extend_lspconfig()

-- Define default on_attach behavior
local on_attach = function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end

-- Setup language servers using lspconfig
local lspconfig = require('lspconfig')

-- Start Manual LSP setup
-- Lua LSP setup (Fix global 'vim')
lspconfig.lua_ls.setup({
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      }
    }
  }
})

-- Rust Analyzer setup
lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
})

-- Java LSP setup
lspconfig.jdtls.setup({
  on_attach = on_attach,
})

-- C LSP setup
lspconfig.clangd.setup({
  on_attach = on_attach,
})
-- End Manual LSP setup

-- Diagnostic virtual text
vim.diagnostic.config({
  virtual_text = true,
})


-- Autocompletion setup
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end, { "i", "s" }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { "i", "s" }),
      },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
})
