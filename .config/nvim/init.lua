local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true

vim.o.splitright = true
-- Setting tab space _2_
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.bo.softtabstop = 2

require("packer-plugins")
require("tokyonight")
require("telescope").load_extension "file_browser"
require("indent_blankline").setup {
  show_current_contenxt = true,
  show_current_context_start = true,
}

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

vim.cmd("colorscheme tokyonight-night")

-- Key bindings custom
keymap('i', 'jk', '<ESC>', opts)
keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)

-- IDE Style Bindings
keymap('n', "<Leader>T" , ":vs +te | vertical resize 70<CR>", opts)


---- Window management keybings
keymap('n', "<Leader>n", ":vsplit<CR>", opts)
keymap('n', "<Leader>N", ":split<CR>", opts)
keymap('t', "<M-q>", "<C-\\><C-n>", opts)

keymap('n', "<C-t>",     ":tabnew<CR>", opts)

-- Telescope keybindings
keymap('n', "<M-f>", ":Telescope find_files<CR>", opts)
keymap('n', "<M-b>", ":Telescope file_browser<CR>", opts)

-- Tabline Bindings
--- Re-ordering
keymap('n', "<Leader>X", ":BufferMovePrevious<CR>", opts)
keymap('n', "<Leader>C", ":BufferMoveNext<CR>", opts)
--- Goto Buffer
keymap('n', '<A-1>', ":BufferGoto 1<CR>", opts)
keymap('n', '<A-2>', ":BufferGoto 2<CR>", opts)
keymap('n', '<A-3>', ":BufferGoto 3<CR>", opts)
keymap('n', '<A-4>', ":BufferGoto 4<CR>", opts)
keymap('n', '<A-5>', ":BufferGoto 5<CR>", opts)
--- Buffer controls
keymap('n', '<M-w>', ":BufferClose<CR>", opts)

-- Vim Move .. Move text 
vim.g.move_key_modifier = 'C'
