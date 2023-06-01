-- Colorscheme [TokyoNight] -------
--require("tokyonight").setup({
--  style = "night", -- Options: "storm", "moon", "night", "day"
--  light_style = "day",
--  transparent = true,
--  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--  styles = {
--    -- Style to be applied to different syntax groups
--    -- Value is any valid attr-list value for ":help nvim_set_hl"
--    comments = { italic = true },
--    keywords = { italic = true },
--    functions = {},
--    variables = {},
--    -- Background styles. Options: "dark", "transparent", "normal"
--    sidebars = "transparent", -- Style for sidebars, see below
--    floats = "transparent", -- Style for floating windows
--  },
--  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--  dim_inactive = false, -- dims inactive windows
--  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
--
--  --- You can override specific color groups to use other groups or a hex color
--  --- function will be called with a ColorScheme table
--  ---@param colors ColorScheme
--  on_colors = function(colors) end,
--
--  --- You can override specific highlights to use other groups or a hex color
--  --- function will be called with a Highlights and ColorScheme table
--  ---@param highlights Highlights
--  ---@param colors ColorScheme
--  on_highlights = function(highlights, colors) end,
--})

require("ayu").setup({
   mirage = false })

vim.cmd[[colorscheme ayu]]


-- Statusbar ----------------------
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'ayu',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = { { 'filename', file_status = true, path = 2 } },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { { 'filename', file_status = true, path = 2 } },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
