-- ~/.config/nvim/lua/plugins/osc52.lua
return {
	"ojroques/nvim-osc52",
	config = function()
		local osc52 = require("osc52")
		osc52.setup({
			max_length = 0, -- ไม่มี limit ขนาด
			silent = true,
			trim = false,
		})

		-- Normal mode: copy motion to clipboard
		vim.keymap.set("n", "<leader>y", osc52.copy_operator, { expr = true })
		-- Visual mode: copy selection
		vim.keymap.set("v", "<leader>y", osc52.copy_visual)

		-- ตั้งให้ yank ทุกอย่างใช้ OSC52
		local function copy()
			if vim.v.event.operator == "y" and vim.v.event.regname == "" then
				osc52.copy_register("")
			end
		end
		vim.api.nvim_create_autocmd("TextYankPost", { callback = copy })
	end,
}
