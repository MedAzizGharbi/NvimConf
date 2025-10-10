return {
    {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
	    'nvim-lua/plenary.nvim',
	    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	    { "nvim-telescope/telescope-ui-select.nvim" },
	},
	config = function()
	    require('telescope').setup{
		defaults = {
		    mappings = {
			i = {
			}
		    }
		},
		pickers = {
		},
		extensions = {
		}
	    }
	    vim.keymap.set('n', '<leader>fd', require('telescope.builtin').find_files)
	    vim.keymap.set('n', '<leader>en', function()
		require('telescope.builtin').find_files {
		    cwd = vim.fn.stdpath("config")
		}
	    end)

	    local exmple = "hello"
	    print(example)
	    if x then
		print("helo")
	    end
	    example = "yup"
	end
    }
}
