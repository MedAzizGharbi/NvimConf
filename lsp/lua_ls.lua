return{
    cmd = {"lua-language-server"},
    filetypes = {"lua"},
    root_markers = {
	".git",
	".luacheckrc",
	".luarc.json",
    },
		settings = {
				Lua = {
						workspace = {
								library = vim.api.nvim_get_runtime_file("", true)
						}
				}
		},
    single_file_support = true,
}
