return {
	"dmmulroy/tsc.nvim",
	ft = { "typescript", "typescriptreact" },
	config = function()
		require("tsc").setup({
			auto_open_qflist = true,
			auto_close_qflist = false,
			bin_path = vim.fn.exepath("tsc"),
			enable_progress_notifications = true,
			flags = {
				noEmit = true,
				watch = false,
			},
			hide_progress_notifications_from_history = true,
			spinner = { "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷" },
			pretty_errors = true,
		})

		-- Keybinding to run TypeScript compiler
		vim.keymap.set("n", "<leader>tc", "<cmd>TSC<cr>", { desc = "Run TypeScript compiler" })
	end,
}
