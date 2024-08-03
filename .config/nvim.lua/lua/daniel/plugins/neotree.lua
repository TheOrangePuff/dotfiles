return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			enable_git_status = true,
		})
		local keymap = vim.keymap

		keymap.set("n", "<leader>n", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neotree" })
		-- TODO: open when not opening file (or just open neovim with `nvim .`)
	end,
}
