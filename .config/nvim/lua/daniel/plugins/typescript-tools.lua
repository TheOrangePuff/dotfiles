return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
	config = function()
		require("typescript-tools").setup({
			on_attach = function(client, bufnr)
				-- Disable formatting capability to let conform.nvim handle it
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false

				-- LSP keybindings
				local opts = { buffer = bufnr, silent = true }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
				vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
				vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

				-- TypeScript-specific keybindings
				vim.keymap.set("n", "<leader>to", "<cmd>TSToolsOrganizeImports<cr>", opts)
				vim.keymap.set("n", "<leader>ts", "<cmd>TSToolsSortImports<cr>", opts)
				vim.keymap.set("n", "<leader>tu", "<cmd>TSToolsRemoveUnused<cr>", opts)
				vim.keymap.set("n", "<leader>ti", "<cmd>TSToolsAddMissingImports<cr>", opts)
				vim.keymap.set("n", "<leader>tf", "<cmd>TSToolsFixAll<cr>", opts)

				-- Enable inlay hints if supported
				if client.server_capabilities.inlayHintProvider then
					vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
				end
			end,
			settings = {
				tsserver_file_preferences = {
					includeInlayParameterNameHints = "all",
					includeInlayParameterNameHintsWhenArgumentMatchesName = false,
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
					includeInlayPropertyDeclarationTypeHints = true,
					includeInlayFunctionLikeReturnTypeHints = true,
					includeInlayEnumMemberValueHints = true,
				},
			},
		})
	end,
}
