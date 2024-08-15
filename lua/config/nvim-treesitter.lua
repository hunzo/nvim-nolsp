local options = {
  ensure_installed = {
    "vim",
    "lua",
    "markdown",
    "dockerfile",
    "yaml",
  },
  auto_install = true,
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = true,
    -- disable = {
    -- 	"python",
    -- },
  },
}

return options
