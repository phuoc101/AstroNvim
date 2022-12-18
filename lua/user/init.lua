--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
local config = {
	-- Set icons
	icons = {
		MacroRecording = "",
		ActiveLSP = "",
		ActiveTS = "綠",
		BufferClose = "",
		NeovimClose = "",
		DefaultFile = "",
		Diagnostic = "裂",
		DiagnosticError = "",
		DiagnosticHint = "",
		DiagnosticInfo = "",
		DiagnosticWarn = "",
		Ellipsis = "…",
		FileModified = "",
		FileReadOnly = "",
		FolderClosed = "",
		FolderEmpty = "",
		FolderOpen = "",
		Git = "",
		GitAdd = "",
		GitBranch = "",
		GitChange = "",
		GitConflict = "",
		GitDelete = "",
		GitIgnored = "◌",
		GitRenamed = "➜",
		GitStaged = "✓",
		GitUnstaged = "✗",
		GitUntracked = "★",
		LSPLoaded = "",
		LSPLoading1 = "",
		LSPLoading2 = "",
		LSPLoading3 = "",
	},
	-- Configure AstroNvim updates
	updater = {
		remote = "origin", -- remote to use
		channel = "nightly", -- "stable" or "nightly"
		version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
		branch = "main", -- branch name (NIGHTLY ONLY)
		commit = nil, -- commit hash (NIGHTLY ONLY)
		pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
		skip_prompts = false, -- skip prompts about breaking changes
		show_changelog = true, -- show the changelog after performing an update
		auto_reload = false, -- automatically reload and sync packer after a successful update
		auto_quit = false, -- automatically quit the current session after a successful update
		-- remotes = { -- easily add new remotes to track
		--   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
		--   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
		--   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
		-- },
	},

	-- Set colorscheme to use
	colorscheme = "default_theme",

	-- set vim options here (vim.<first_key>.<second_key> = value)
	options = {
		opt = {
			-- set to true or false etc.
			relativenumber = true, -- sets vim.opt.relativenumber
			number = true, -- sets vim.opt.number
			spell = false, -- sets vim.opt.spell
			signcolumn = "auto", -- sets vim.opt.signcolumn to auto
			wrap = false, -- sets vim.opt.wrap
		},
		g = {
			mapleader = " ", -- sets vim.g.mapleader
			autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
			cmp_enabled = true, -- enable completion at start
			autopairs_enabled = true, -- enable autopairs at start
			diagnostics_enabled = true, -- enable diagnostics at start
			status_diagnostics_enabled = true, -- enable diagnostics in statusline
			icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
			ui_notifications_enabled = true, -- disable notifications when toggling UI elements
		},
	},
	-- Set dashboard header
	header = {
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⠙⢷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡾⠛⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡇⡀⠀⠉⠻⢶⣤⣀⣠⣤⣤⣄⣀⣀⣠⣤⣤⣄⣀⣤⡶⠟⠉⠀⢀⢸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⣿⣷⣦⣤⣴⣞⡋⠉⠀⠀⠈⠙⠋⠁⠀⠀⠉⢙⣳⣦⣤⣴⣾⣿⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣧⢻⣿⡿⠟⠋⠉⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠉⠙⠻⢿⣿⡿⣼⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠟⠋⠀⢀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡀⠀⠙⠻⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣫⡤⠂⢠⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣄⠐⢤⣝⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡿⠋⠀⢠⣿⣿⣷⣶⢶⣤⡀⠀⠀⠀⠀⠀⠀⢀⣤⡶⣶⣾⣿⣿⡄⠀⠙⢿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⠁⠀⢀⣾⣿⣿⣄⠙⠦⠼⣿⡄⠀⠀⠀⠀⢠⣿⠧⠴⠋⣠⣿⣿⣿⡀⠀⠈⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠁⠀⠐⢿⣍⠀⠉⠙⠻⣶⣶⣾⠗⠀⠀⠀⠀⠺⣷⣶⣶⠟⠋⠉⠀⣩⡿⠂⠀⠈⢿⡀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⣼⣣⡾⠀⢀⡴⠋⠁⠀⠀⠀⢹⣿⠋⠀⠀⠀⠀⠀⠀⠙⣿⡏⠀⠀⠀⠈⠙⢦⡀⠀⢷⣜⣧⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠰⠛⣿⠃⠀⣼⠁⠀⠀⠀⠀⠀⣸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠸⣇⠀⠀⠀⠀⠀⠈⣧⠀⠘⣿⠛⠆⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⢰⡿⠀⠀⢿⣄⡀⠀⠀⠀⢀⡟⠀⠀⣠⠦⢤⡤⠴⣄⠀⠀⢻⡀⠀⠀⠀⢀⣠⡿⠀⠀⢿⡆⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⢸⣧⣤⣄⣀⡈⠙⠶⣄⠀⠸⣧⠀⠀⠳⣶⣦⣴⣶⠞⠀⠀⣼⠇⠀⣠⠖⠋⢁⣀⣠⣤⣼⡇⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠛⠷⣦⣌⡳⣄⠹⣧⣀⣠⣤⣽⣯⣤⣀⣀⣼⠋⣠⢞⣡⣴⠾⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣮⣷⡌⢿⣤⣀⠀⠀⣀⣤⡿⢡⣾⣵⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣆⠹⣿⣿⣿⣿⠏⣰⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣧⠘⢿⡿⠃⣼⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣧⠈⠁⣼⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣧⣼⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	},

	-- Default theme configuration
	default_theme = {
		-- Modify the color palette for the default theme
		colors = {
			fg = "#abb2bf",
			bg = "#282c34",
		},
		highlights = function(hl) -- or a function that returns a new table of colors to set
			local C = require("default_theme.colors")

			hl.Normal = { fg = C.fg, bg = C.bg }

			-- New approach instead of diagnostic_style
			hl.DiagnosticError.italic = true
			hl.DiagnosticHint.italic = true
			hl.DiagnosticInfo.italic = true
			hl.DiagnosticWarn.italic = true

			return hl
		end,
		-- enable or disable highlighting for extra plugins
		plugins = {
			aerial = true,
			beacon = false,
			bufferline = true,
			cmp = true,
			dashboard = true,
			highlighturl = true,
			hop = false,
			indent_blankline = true,
			lightspeed = false,
			["neo-tree"] = true,
			notify = true,
			["nvim-tree"] = false,
			["nvim-web-devicons"] = true,
			rainbow = true,
			symbols_outline = false,
			telescope = true,
			treesitter = true,
			vimwiki = false,
			["which-key"] = true,
		},
	},

	-- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
	diagnostics = {
		virtual_text = false,
		underline = true,
		-- disable virtual_text since only virtual_lines needed
		virtual_lines = { only_current_line = true },
	},

	-- Extend LSP configuration
	lsp = {
		-- enable servers that you already have installed without mason
		servers = {
			-- "pyright"
		},
		formatting = {
			format_on_save = false, -- enable or disable auto formatting on save
		},
		-- easily add or disable built in mappings added during LSP attaching
		mappings = {
			n = {
				-- ["<leader>lf"] = false -- disable formatting keymap
			},
		},
	},

	-- Mapping data with "desc" stored directly by vim.keymap.set().
	--
	-- Please use this mappings table to set keyboard mapping since this is the
	-- lower level configuration and more robust one. (which-key will
	-- automatically pick-up stored data by this setting.)
	mappings = {
		-- first key is the mode
		n = {
			-- second key is the lefthand side of the map
			-- mappings seen under group name "Buffer"
			["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
			["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
			["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
			["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
			-- move to end/beginning of line
			["B"] = { "^" },
			["E"] = { "$" },
			-- Hop
			["<leader>F"] = { "<cmd>HopPattern<CR>", desc = "Find pattern" },
			["F"] = { "<cmd>HopChar1<CR>" },
			-- ["<leader><leader>"] = { require("lsp_lines").toggle, desc = "Toggle Lsp_lines" },
			-- Renaming
			["<F2>"] = { "<cmd>lua vim.lsp.buf.rename()<CR>" },
		},
		v = {
			["B"] = { "^" },
			["E"] = { "$" },
			["<leader>F"] = { "<cmd>HopPattern<CR>", desc = "Find pattern" },
			["F"] = { "<cmd>HopChar1<CR>" },
			-- ["<leader><leader>"] = { require("lsp_lines").toggle, desc = "Toggle Lsp_lines" },
			["<leader>b"] = {
				"<esc><cmd>lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<cr>",
				desc = "Toggle comment line blockwise",
			},
		},
		t = {
			-- setting a mapping to false will disable it
			-- ["<esc>"] = false,
		},
	},

	-- Configure plugins
	plugins = {
		init = {
			-- Theme
			{ "tanvirtin/monokai.nvim" },
			{ "Shatur/neovim-ayu" },
			{ "shaunsingh/nord.nvim" },
			{ "catppuccin/nvim" },
			{ "NLKNguyen/papercolor-theme" },
			{ "navarasu/onedark.nvim" },
			-- Surrounding
			{
				"kylechui/nvim-surround",
				tag = "*", -- Use for stability; omit to use `main` branch for the latest features
				config = function()
					require("nvim-surround").setup({
						-- Configuration here, or leave empty to use defaults
					})
				end,
			},
			-- Code annotation
			{
				"danymat/neogen",
				config = function()
					require("neogen").setup({})
				end,
				requires = "nvim-treesitter/nvim-treesitter",
			},
			-- Error highlights
			{
				"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
				config = function()
					require("lsp_lines").setup()
				end,
			},
			-- Smooth scrolling
			{ "declancm/cinnamon.nvim" },
			-- Formatting
			-- { "vim-autoformat/vim-autoformat" },
			-- Navigation
			{ "chaoren/vim-wordmotion" },
			{
				"phaazon/hop.nvim",
				branch = "v1", -- optional but strongly recommended
				config = function()
					-- you can configure Hop the way you like here; see :h hop-config
					require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
				end,
			},
			-- LaTeX compile
			{ "lervag/vimtex" },
			-- Markdown preview
			{
				"iamcco/markdown-preview.nvim",
				run = function()
					vim.fn["mkdp#util#install"]()
				end,
			},
			-- Signature suggestion
			{
				"ray-x/lsp_signature.nvim",
				event = "BufRead",
				config = function()
					require("lsp_signature").setup()
				end,
			},
		},
		-- All other entries override the require("<key>").setup({...}) call for default plugins
		["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`
			config.sources = {
				-- Python
				require("null-ls").builtins.formatting.black.with({ extra_args = { "--line-length=88" } }),
				require("null-ls").builtins.diagnostics.flake8.with({
					extra_args = { "--max-line-length=88", "--extend-ignore=E203" },
				}),
				-- Lua
				require("null-ls").builtins.formatting.stylua,
				-- LaTeX
				require("null-ls").builtins.formatting.latexindent,
				-- Markdown
				require("null-ls").builtins.formatting.mdformat,
			}
			return config -- return final config table
		end,
		treesitter = { -- overrides `require("treesitter").setup(...)`
			-- ensure_installed = { "lua" },
		},
		-- use mason-lspconfig to configure LSP installations
		["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
			-- ensure_installed = { "sumneko_lua" },
		},
		-- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
		["mason-null-ls"] = { -- overrides `require("mason-null-ls").setup(...)`
			-- ensure_installed = { "prettier", "stylua" },
		},
		["mason-nvim-dap"] = { -- overrides `require("mason-nvim-dap").setup(...)`
			-- ensure_installed = { "python" },
		},
	},

	-- LuaSnip Options
	luasnip = {
		-- Add paths for including more VS Code style snippets in luasnip
		vscode_snippet_paths = {
			"~/.config/nvim/lua/user/snips/tex",
			"~/.config/nvim/lua/user/snips/python",
			"~/.config/nvim/lua/user/snips/cpp",
			"~/.config/nvim/lua/user/snips/launch",
		},
		-- Extend filetypes
		filetype_extend = {
			-- javascript = { "javascriptreact" },
		},
	},

	-- CMP Source Priorities
	-- modify here the priorities of default cmp sources
	-- higher value == higher priority
	-- The value can also be set to a boolean for disabling default sources:
	-- false == disabled
	-- true == 1000
	cmp = {
		source_priority = {
			nvim_lsp = 1000,
			luasnip = 750,
			buffer = 500,
			path = 250,
		},
	},

	-- Modify which-key registration (Use this with mappings table in the above.)
	["which-key"] = {
		-- Add bindings which show up as group name
		register = {
			-- first key is the mode, n == normal mode
			n = {
				-- second key is the prefix, <leader> prefixes
				["<leader>"] = {
					-- third key is the key to bring up next level and its displayed
					-- group name in which-key top level menu
					["b"] = { name = "Buffer" },
				},
			},
		},
	},

	-- This function is run last and is a good place to configuring
	-- augroups/autocommands and custom filetypes also this just pure lua so
	-- anything that doesn"t fit in the normal config locations above can go here
	polish = function()
		-- Set up custom filetypes
		vim.filetype.add({
			pattern = {
				[".*%.launch"] = "xml",
				[".clang-format"] = "yaml",
			},
		})
	end,

	dap = {
		adapters = {
			python = {
				type = "executable",
				command = "/home/phuoc101/venvs/debugpy/bin/python",
				args = { "-m", "debugpy.adapter" },
			},
		},
		configurations = {
			python = {
				{
					-- The first three options are required by nvim-dap
					type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
					request = "launch",
					name = "Launch file",

					-- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

					program = "${file}", -- This configuration will launch the current file if used.
					pythonPath = function()
						-- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
						-- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
						-- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
						-- local cwd = vim.fn.getcwd()
						-- if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
						--   return cwd .. "/venv/bin/python"
						-- elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
						--   return cwd .. "/.venv/bin/python"
						-- else
						--   return "/home/phuoc101/anaconda3/envs/pytorch/bin/python"
						-- end
						local conda_pref = os.getenv("CONDA_PREFIX")
						local venv = os.getenv("VIRTUAL_ENV")
						if conda_pref ~= nil then
							return conda_pref .. "/bin/python"
						elseif venv ~= nil then
							return venv .. "/bin/python"
						else
							return "/usr/bin/python"
						end
					end,
				},
			},
		},
	},
}

require("cinnamon").setup({
	default_delay = 1,
	max_length = 500,
	scroll_limit = -1,
})

return config
