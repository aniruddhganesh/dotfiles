return require('packer').startup(function()
	use ('folke/tokyonight.nvim')
	use ('wbthomason/packer.nvim') 
	use ('elkowar/yuck.vim')
	use ('nvim-tree/nvim-web-devicons')
	use ('nvim-tree/nvim-tree.lua')
	use ('nvim-telescope/telescope.nvim')	
	use ('nvim-telescope/telescope-file-browser.nvim')	
	use ('nvim-lua/plenary.nvim')
  use ('romgrk/barbar.nvim')
  use ('norcalli/nvim-colorizer.lua')
  use ('matze/vim-move')
  -- Completion for code? 
  use ('ms-jpq/coq_nvim')
  use ('ms-jpq/coq.artifacts')

  use ('lukas-reineke/indent-blankline.nvim') 
  use {
		'goolord/alpha-nvim',
		config = function ()
			require'alpha'.setup(require'alpha.themes.dashboard'.config)
		end
	}
--use ({
-- "folke/persistence.nvim"
-- event = "BufReadPre",
-- module = "persistence",
-- config = function()
--  require("persistence").setup()
-- end,
--})
end)
