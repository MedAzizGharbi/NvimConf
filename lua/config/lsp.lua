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
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
-- enabling the lsps
vim.lsp.enable({
	"lua_ls",
	"clangd",
	"ts_ls",
	"rust-analyzer",
	"emmetls",
	"css-lsp",
	"tailwind_ls",
	"latex"

})
