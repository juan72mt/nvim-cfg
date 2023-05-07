-- Configuracion Mason
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- Configuracion mason-lspconfig
require("mason-lspconfig").setup ({
    ensure_installed = { "lua_ls", "intelephense" },
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

-- Configuracion lspconfig
-- requerido para la capacidad de autocompletado cmp-nvim:
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')
-- lspconfig - lua_ls (lenguaje: lua)
lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- lspconfig - intelephense (lenguaje: php) 
lspconfig.intelephense.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
