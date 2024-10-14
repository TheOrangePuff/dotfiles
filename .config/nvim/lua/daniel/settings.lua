local global = vim.g
local opt = vim.opt
local keymap = vim.keymap

global.mapleader = " "
global.maplocalleader = " "

opt.bg = "dark"
opt.mouse = "a"
opt.hlsearch = false
opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.compatible = false
opt.encoding = "UTF-8"
opt.rnu = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.wildmode = "longest,list,full"
opt.splitbelow = true
opt.splitright = true
opt.updatetime = 250 -- ensure sign column updates frequency
