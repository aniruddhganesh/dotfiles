local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Key bindings custom
keymap('i', 'jk', '<ESC>', opts)

-- IDE Style Bindings
keymap('n', "<Leader>e", ":Neotree toggle focus<CR>", opts)
keymap('n', "<Leader>T", ":vs +te | vertical resize 70<CR>", opts)
keymap('n', "<Leader>z", ":!compilerun.sh %<CR>", opts)

-- Window management keybings
keymap('n', "<Leader>n", ":vsplit<CR>", opts)
keymap('n', "<Leader>N", ":split<CR>", opts)
keymap('t', "<M-q>", "<C-\\><C-n>", opts)

keymap('n', "<C-t>",     ":tabnew<CR>", opts)

-- Telescope keybindings
keymap('n', "<M-f>", ":Telescope find_files<CR>", opts)
