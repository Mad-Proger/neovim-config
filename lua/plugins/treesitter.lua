return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "lua", "rust", "python", "cpp", "cmake" },
			highlight = { enable = true },
			indent = { enable = true },
		},
	},
}