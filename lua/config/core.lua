vim.cmd("set number")
vim.cmd("set relativenumber")
-- ANSIBLE/YAML --
vim.filetype.add({
	extension = {
		yml = "yaml.ansible",
	},
})
