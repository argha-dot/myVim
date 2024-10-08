-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins, you can run
--    :Lazy update

require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", opts = {} },
	{ "windwp/nvim-autopairs", opts = {} },
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},

	require("plugins.surround"),
	-- require("plugins.tree"),
	require("plugins.neo-tree"),
	require("plugins.gitsigns"),
	require("plugins.neogit"),
	-- require("plugins.which-key"),
	require("plugins.telescope"),
	require("plugins.lspconfig"),
	require("plugins.conform"),
	require("plugins.cmp"),
	require("plugins.toggleterm"),

	-- require("plugins.markview"),
	require("plugins.colorscheme"),
	require("plugins.colorizer"),

	require("plugins.todo-comments"),

	require("plugins.lines"),

	require("plugins.treesitter"),

	require("plugins.indent"),

	require("plugins.supermaven"),
}, {
	ui = {
		-- If you have a Nerd Font, set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
