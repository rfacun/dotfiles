-- Dependencies needed: fd, ripgrep, fzf
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local telescope = require("telescope")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fp", builtin.git_status, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fm", builtin.man_pages, {})
vim.keymap.set("n", "<leader>fc", builtin.commands, {})

vim.keymap.set('n', '<leader>fg', function()
	require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		winblend = 10,
  		previewer = false,
    })
end, {})

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close,
                ["<C-u>"] = false,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-l>"] = actions.preview_scrolling_down,
                ["<C-h>"] = actions.preview_scrolling_up,
            },
        },
    },
    pickers = {
        find_files = {
            hidden = true,
        },
    },
})

telescope.load_extension("fzf")
