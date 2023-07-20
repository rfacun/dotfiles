require("lualine").setup {
    options = {
        icons_enabled = true,
        theme = 'ayu',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },

    sections = {
        lualine_a = {
            { 'mode' }
        },
        lualine_b = {
            { 'branch' },
            { 'diff' },
            { 'diagnostics', sources = { 'nvim_diagnostic' } }
        },
        lualine_c = {
            { 'filename', file_status = true, newfile_status = true, path = 2 }
        },

        lualine_x = {
            { 'filesize' },
            { 'filetype' },
        },
        lualine_y = {
            { 'location' }
        },
        lualine_z = {
            { 'progress' }
        }
    },

    inactive_sections = {
        lualine_a = {
            { 'mode' }
        },
        lualine_b = {
            { 'branch' },
            { 'diff' },
            { 'diagnostics', sources = { 'nvim_diagnostic' } }
        },
        lualine_c = {
            { 'filename', file_status = true, newfile_status = true, path = 2 }
        },

        lualine_x = {
            { 'filesize' },
            { 'filetype' },
        },
        lualine_y = {
            { 'location' }
        },
        lualine_z = {
            { 'progress' }
        }
    },
}
