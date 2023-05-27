-- Default indentation settings
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.api.nvim_create_autocmd("FileType", {
 pattern = { "html", "css"  },
 callback = function()
    vim.opt.softtabstop = 2
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.expandtab = true
    vim.opt.smartindent = true
 end
})

vim.api.nvim_create_autocmd("FileType", {
 pattern = { "lua" },
 callback = function()
    vim.opt.softtabstop = 3
    vim.opt.tabstop = 3
    vim.opt.shiftwidth = 3
    vim.opt.expandtab = true
    vim.opt.smartindent = true
 end
})
