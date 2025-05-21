-- return {}
return {
	"catppuccin/nvim",
	name = "catppuccin",
  flavour = "frappe",
	priority = 999,
	config = function()
		local catppuccin = require("catppuccin")
		catppuccin.setup({
			flavour = "auto",
			transparent_background = true,
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}

