return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local lspconfig = vim.lsp.config

		local on_attach = function(client, bufnr)
			-- format on save
			if client.server_capabilities.documentFormattingProvider then
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = vim.api.nvim_create_augroup("Format", { clear = true }),
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format()
					end,
				})
			end
		end

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.ts_ls = {
			on_attach = on_attach,
			capabilities = capabilities,
			cmd = { "typescript-language-server", "--stdio" },
			filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
			root_dir = function(fname)
				return vim.fn.getcwd()
			end,
		}

		lspconfig.jsonls = {
			on_attach = on_attach,
			capabilities = capabilities,
			cmd = { "vscode-json-language-server", "--stdio" },
			filetypes = { "json", "jsonc" },
			root_dir = function(fname)
				return vim.fn.getcwd()
			end,
		}

		lspconfig.eslint = {
			on_attach = on_attach,
			capabilities = capabilities,
			cmd = { "vscode-eslint-language-server", "--stdio" },
			filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue" },
			root_dir = function(fname)
				return vim.fn.getcwd()
			end,
		}
	end,
}
