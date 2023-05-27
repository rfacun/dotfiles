-- Treesitter ---------------------
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
    "bash", "lua", "c", "cpp", "python"
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- LSP ----------------------------
--[[ The "mason" plugin provides a repository and frontend that helps a user
manage the installation of various third-party tools (LSP servers, formatters, linters, etc...) that
can be useful when running neovim. It also provides an API for plugin developers

The "nvim-lspconfig" provides (very) basic configurations for LSP servers,
and a simpler configuration to interact with neovim. One thing it does not, and
cannot easily, provide is the path to the command to use when launching the server.

The "mason-lspconfig" uses Mason to ensure installation of user specified
LSP servers and will tell nvim-lspconfig what command to use to launch those servers. ]]

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'bashls', 'lua_ls', 'clangd', 'pyright'
  }
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_attach = function(client, bufnr) -- Hay más remaps para checkear
  local opts = { buffer = bufnr, remap = false }
  -- Diagnostics
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<space>d', vim.diagnostic.open_float, opts)
  -- Info
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  -- Modifying
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
end

local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = lsp_attach,
      capabilities = lsp_capabilities,
    })
  end,
})

-- Completion ---------------------
local cmp = require("cmp")
local cmp_select_opts = {behavior = cmp.SelectBehavior.Select}

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  -- Snppet engine
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  -- Add window borders
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  -- Keybinds
  mapping = cmp.mapping.preset.insert({
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select_opts),
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select_opts),
    ['<Tab>'] = cmp.mapping.confirm({select = false}),
  }),
  -- Snippet sources
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }, {
    { name = "buffer" },
  }),
  -- Preselect the first item
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
})

-- Markdown preview ---------------
vim.keymap.set('n', '<leader>md', function()
  vim.cmd("MarkdownPreviewToggle")
end)
