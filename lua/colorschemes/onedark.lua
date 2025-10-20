return {
	"navarasu/onedark.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("onedark").setup({
			style = "darker",
			transparent = false,
			-- Lualine options --
			lualine = {
				transparent = false, -- lualine center bar transparency
			},
		})
		-- Enable theme
		require("onedark").load()
	end,
}
