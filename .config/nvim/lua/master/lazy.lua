local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- Visual -----------------------
  "folke/tokyonight.nvim",

  { "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", opts = true }
  },

  -- Movement ---------------------
  'ThePrimeagen/harpoon',

  { 'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Coding -----------------------
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'saadparwaiz1/cmp_luasnip',

  { 'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },

  { "williamboman/mason.nvim",
    build = ":MasonUpdate"
  },

  { "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" }
  },

  -- QoL --------------------------
  { "iamcco/markdown-preview.nvim",
      build = function() vim.fn["mkdp#util#install"]() end,
  },
}

local opts = {}

require("lazy").setup(plugins, opts)
