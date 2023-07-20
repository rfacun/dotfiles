local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local tel_builtin = require("telescope.builtin")

local on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set('n', '<leader>et', function() tel_builtin.diagnostics() end, opts)
    vim.keymap.set('n', '<leader>ef', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

    vim.keymap.set('n', '<leader>gd', function() tel_builtin.lsp_definitions() end, opts)
    vim.keymap.set('n', '<leader>gr', function() tel_builtin.lsp_references() end, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
end

vim.diagnostic.config({ virtual_text = false })

lspconfig["bashls"].setup({
    on_attach = on_attach,
    capabilities = capabilities
})

lspconfig["pyright"].setup({
    on_attach = on_attach,
    capabilities = capabilities
})

lspconfig["lua_ls"].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            },
            telemetry = {
                enable = false,
            }
        }
    }
})
