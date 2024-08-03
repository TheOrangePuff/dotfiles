local global = vim.g
local opt = vim.opt

global.mapleader = "<Space>"
global.maplocalleader = "<Space>"

opt.bg = "dark"
opt.go = "a"
opt.mouse = "a"
opt.hlsearch = false
opt.clipboard += "unnamedplus"
opt.cursorline = true
opt.compatible = false
opt.encoding = "UTF-8"
opt.rnu = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.wildmode = "longest,list,full"
opt.splitbelow = true
opt.splitright = true
opt.updatetime = 250 -- ensure sign column updates frequency
