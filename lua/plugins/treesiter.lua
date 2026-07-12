return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    highlight = {
		enable = true,
	    }
	    indent = { enable = true},
	    ensure_installed = {
		"c",
		"cpp",
		"rust",
		"lua",
		"tsx",
		"typescript",
		"php",
		"python",
		"javascript"
	    },
	    auto_install = true,
	})
    end
}
