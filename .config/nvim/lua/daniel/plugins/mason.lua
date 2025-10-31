return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		-- Find language servers here: https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers
		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = {
				"eslint",
				"jsonls",
				"ts_ls",
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"prettierd",
				"stylua",
				"eslint_d",
				"typescript-language-server",
			},
		})
	end,
}
