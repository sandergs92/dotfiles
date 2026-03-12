return {
	'MeanderingProgrammer/render-markdown.nvim',
	ft = { 'markdown', 'quarto' }, -- load only for Markdown‑like files
	dependencies = {
		'nvim-treesitter/nvim-treesitter', -- required for syntax
		'nvim-tree/nvim-web-devicons', -- optional icons
	},
	opts = {
		on = {
			attach = function()
				vim.treesitter.start()
			end,
		},

		-- make the plugin enabled by default
		enabled = true,

		-- show rendered view in Normal, Command & Terminal modes
		render_modes = { 'n', 'c', 't' },

		-- better concealing behavior: hides decorations on cursor line
		anti_conceal = {
			enabled = true,
			disabled_modes = false,
			above = 0,
			below = 0,
			ignore = {
				code_background = true,
				indent = true,
				sign = true,
				virtual_lines = true,
			},
		},

		-- positively handle large files
		max_file_size = 15.0, -- MB

		-- reduce lag while scrolling/editing
		debounce = 80, -- ms

		-- tweak window options while rendering
		win_options = {
			conceallevel = { default = vim.o.conceallevel, rendered = 3 },
			concealcursor = { default = vim.o.concealcursor, rendered = '' },
		},

		-- you can override settings per filetype or buffer type
		overrides = {
			buftype = {
				nofile = {
					sign = { enabled = false }, -- no clutter in hover docs
				},
			},
		},
	},
}
