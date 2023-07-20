local cmp = require("cmp")
local luasnip = require("luasnip")

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },

    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'cmp-nvim-lua' },
        { name = 'path' },
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-h>'] = cmp.mapping.scroll_docs(-5),
        ['<C-l>'] = cmp.mapping.scroll_docs(5),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<C-e>'] = cmp.mapping.abort(),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif require("luasnip").expand_or_jumpable() then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
            else
                fallback()
            end
        end, { "i", "s", }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif require("luasnip").jumpable(-1) then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
            else
                fallback()
            end
        end, { "i", "s", }),
    }),

    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
    },

    completion = { completeopt = 'menu,menuone,noinsert' },

    enabled = function()
        -- Autocompletion disabled for Telescope
        local buftype = vim.api.nvim_buf_get_option(0, "buftype")
        if buftype == "prompt" then return false end
        -- Autocompletion disabled for comments (when using Treesitter)
        local context = require("cmp.config.context")
        return not context.in_treesitter_capture("comment") and not context.in_syntax_group("Comment")
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "text" },
    callback = function()
        require("cmp").setup.buffer({ enabled = false })
    end,
})
