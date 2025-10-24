function _G.Compile_and_run_cpp()
  local filename = vim.fn.expand("%:p")
  local basename = vim.fn.expand("%:r")

	local compile_cmd = string.format("g++ -std=c++17 -Wall -Wextra %s -o %s", filename, basename)
	local run_cmd = string.format("./%s", basename)

	local result = vim.fn.system(compile_cmd)
	if vim.v.shell_error == 0 then
			vim.cmd("belowright split | terminal " .. run_cmd)
			vim.cmd("startinsert")
	else
			print("❌ Compilation failed:\n" .. result)
	end
end

-- Map Ctrl+B
vim.api.nvim_set_keymap("n", "<C-b>", ":lua Compile_and_run_cpp()<CR>", { noremap = true, silent = true })

