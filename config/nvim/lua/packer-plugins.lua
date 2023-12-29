return require('packer').startup(function()
    use {
        -- Theming
        'folke/tokyonight.nvim',
        'nvim-tree/nvim-web-devicons',
        'nvim-neo-tree/neo-tree.nvim',
        'MunifTanjim/nui.nvim',
        -- Quality of Life
        'wbthomason/packer.nvim', 
        'williamboman/mason.nvim',
        'matze/vim-move',
        'norcalli/nvim-colorizer.lua',
        -- IDE Like
        'nvim-telescope/telescope.nvim',    
        'nvim-treesitter/nvim-treesitter',
        'neovim/nvim-lspconfig',
        'nvim-lua/plenary.nvim',
        'lukas-reineke/indent-blankline.nvim',
    }
end)
