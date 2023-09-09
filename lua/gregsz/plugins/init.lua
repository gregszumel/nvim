-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({ 'rose-pine/neovim', as = 'rose-pine' })


    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use("tpope/vim-fugitive")

    --LSP
    use({"neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    })

    use ({ "jose-elias-alvarez/null-ls.nvim" })

    --LSP Autocomplete
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('L3MON4D3/LuaSnip')

    use {
        "/Users/gregszumel/Documents/coding/projects/xbase",
        run = 'make install', -- or "make install && make free_space" (not recommended, longer build time)
        requires = {
            "neovim/nvim-lspconfig",
        },
        config = function()

            require'lspconfig'.sourcekit.setup{ }

            require'xbase'.setup({
                simctl = {
                    iOS = {
                        'iPhone 14'
                    }
                }
            })  -- see default configuration bellow
        end
    }

    use { "nvim-lua/plenary.nvim" }
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }

    use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }

end)

