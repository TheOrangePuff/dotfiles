return {
	"nvim-treesitter/nvim-treesitter-context",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("treesitter-context").setup({
			enable = true,
			max_lines = 3,
			min_window_height = 0,
			line_numbers = true,
			multiline_threshold = 1,
			trim_scope = "outer",
			mode = "cursor",
			separator = nil,
		})

		-- Keybinding to jump to context
		vim.keymap.set("n", "[c", function()
			require("treesitter-context").go_to_context()
		end, { silent = true, desc = "Jump to context" })
	end,
}
