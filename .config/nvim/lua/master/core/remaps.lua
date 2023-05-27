-- Leader key
vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>rw", vim.cmd.Ex)

-- Move selected around
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "L", ":m '<-2<CR>gv=gv")

-- [CONFLICT] Cursor stays in place when appending bottim lines to current line
--vim.keymap.set("n", "K", "mzJ`z")

-- Cursor in the middle when half-page-jumping
vim.keymap.set("v", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "<C-u>", "<C-u>zz")

-- Search terms stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Replace the word the cursor is over in the whole file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Close buffer
vim.keymap.set("n", "<leader>bd", function()
    vim.cmd("bd")
end)

-- Source
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
