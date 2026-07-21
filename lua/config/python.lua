function _G.Run_python_file()
	local filename = vim.fn.expand("%:p")

	local run_cmd = string.format("python3.11 %s", filename)
	if vim.v.shell_error == 0 then
		vim.cmd("belowright split | terminal " .. run_cmd)
		vim.cmd("startinsert")
	else
		print("Running the python file failed\n")
	end
end

-- Map Ctrl+P
vim.api.nvim_set_keymap("n", "<C-p>", ":lua Run_python_file()<CR>", {noremap = true, silent = true})
