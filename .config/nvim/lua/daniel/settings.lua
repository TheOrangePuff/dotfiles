local global = vim.g
local opt = vim.opt
local keymap = vim.keymap

global.mapleader = " "
global.maplocalleader = " "

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

-- Treesitter (built-in in Neovim 0.12+)
vim.treesitter.language.register("yaml", "helm")

vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		-- silently skip buffers with no treesitter parser
		if pcall(vim.treesitter.start, args.buf) then
			vim.bo[args.buf].indentexpr = "v:lua.require'vim.treesitter'.indentexpr()"
		end
	end,
})
