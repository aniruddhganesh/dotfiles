return require('packer').startup(function()
use {
	'goolord/alpha-nvim',
	config = function ()
		requier'alpha'.setup(require'alpha.themes.dashboard'.config)
	end
}
end)
