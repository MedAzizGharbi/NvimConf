vim.lsp.config('*', {
	capabilities = {
		textDocument = {
			semanticTokens = {
				multilineTokenSupport = true,
			}
		}
	},
	root_markers = { '.git' },
})
vim.diagnostic.config({
	virtual_text = true,
	-- virtual_lines = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},
})
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
-- enabling the lsps
vim.lsp.enable({
	"lua_ls",
	"clangd",
	"ts_ls",
})
