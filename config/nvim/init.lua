-- Vim translation into lua style

vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true

vim.o.splitright = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.bo.softtabstop = 4

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

-- Multi-file Config
require("plugins")
require("lsp")
require("keybinds") 
vim.cmd("colorscheme tokyonight-night")
