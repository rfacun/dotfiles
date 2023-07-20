require('packer').startup(function(use)
    use { "wbthomason/packer.nvim" }

    use { "Shatur/neovim-ayu", }

    use { 'nvim-lualine/lualine.nvim',
        requires = {
            { 'nvim-tree/nvim-web-devicons', opt = true },
        },
    }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use { 'ThePrimeagen/harpoon',
        requires = {
            "nvim-lua/plenary.nvim"
        }
    }

    use { 'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
        }
    }

    use { "williamboman/mason.nvim", run = ":MasonUpdate" }

    use { "neovim/nvim-lspconfig" }
    use { "williamboman/mason-lspconfig.nvim" }

    use { "hrsh7th/nvim-cmp" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "saadparwaiz1/cmp_luasnip" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }
    use { "hrsh7th/cmp-nvim-lua" }
    use { "L3MON4D3/LuaSnip",
        requires = {
            "rafamadriz/friendly-snippets"
        }
    }

    use { "iamcco/markdown-preview.nvim", run = function() vim.fn["mkdp#util#install"]() end, }

    use { "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end
    }

    use { "mbbill/undotree" }

    use { "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end
    }
end)

-- REMAPS ---------------------------------------------------------------------#
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>rw", vim.cmd.Ex)
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set({ "n", "v" }, "<C-d>", "<C-d>zz")
vim.keymap.set({ "n", "v" }, "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)
vim.keymap.set("n", "<leader>ps", function() vim.cmd("PackerSync") end)
vim.keymap.set("n", "<leader>md", vim.cmd.MarkdownPreviewToggle)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- SETTINGS -------------------------------------------------------------------#
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.showmode = false
vim.opt.guicursor = ""
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.wrap = false
vim.opt.colorcolumn = "80"
vim.opt.cursorline = false
vim.opt.iskeyword:append("-")
vim.opt.iskeyword:append("_")
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 50
--vim.cmd[[set statusline=%F\ %r%m\ %=%y\ %4l,%3c\ %3p\%%]]
