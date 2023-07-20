require("ayu").setup({
    mirage = false,
    -- Parameters are "bg", "fg", "sp" and "style"
    overrides = {
        ColorColumn = { bg = "#0d1016" },
    },
})

vim.cmd("colorscheme ayu")
