--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "vscode"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

vim.opt.background = "light"
vim.opt.shiftwidth = 4
vim.opt.swapfile = true
vim.opt.tabstop = 4
vim.opt.wrap = true

vim.cmd('command! Build lua Build()')
vim.cmd('command! BuildCustom lua BuildCustom()')

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
-- Windows-style keybindings
lvim.keys.normal_mode["<C-Left>"] = "<C-O>"
lvim.keys.normal_mode["<C-Right>"] = "<Tab>"
lvim.keys.normal_mode["<Tab>"] = ">>"
lvim.keys.visual_mode["<Tab>"] = ">gv"
lvim.keys.normal_mode["<S-Tab>"] = "<<"
lvim.keys.insert_mode["<S-Tab>"] = "<Esc><<i"
lvim.keys.visual_mode["<S-Tab>"] = "<gv"
lvim.keys.normal_mode["<C-a>"] = "ggVG"
lvim.keys.insert_mode["<C-a>"] = "<Esc>ggVGi"
lvim.keys.visual_mode["<C-a>"] = "<Esc>ggVG"
-- navigate between buffers
lvim.keys.normal_mode["<leader><Left>"] = "<Cmd>bp<CR>"
lvim.keys.normal_mode["<leader><Right>"] = "<Cmd>bn<CR>"
-- close the current buffer
lvim.keys.normal_mode["<leader>cc"] = "<Cmd>bd!<CR>"
-- search in selection
lvim.keys.visual_mode["<A-/>"] = "<Esc>/\\%V"
-- exit with saving
lvim.keys.normal_mode["<leader>x"] = "<Cmd>x<CR>"

-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- }
lvim.builtin.which_key.mappings["S"] = { "<cmd>lua require('spectre').open()<CR>", "Search/replace with Spectre" }
-- search current word
lvim.builtin.which_key.mappings["W"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
  "Search for current word with Spectre" }
lvim.builtin.which_key.vmappings["S"] = { "<cmd>lua require('spectre').open_visual()<CR>",
  "Search for current selection with Spectre" }
-- search in current file
lvim.builtin.which_key.mappings["F"] = { "<cmd>lua require('spectre').open_file_search()<CR>",
  "Search/replace in current file with Spectre" }
lvim.builtin.which_key.mappings["D"] = { "<cmd>lua require('dapui').toggle()<CR>",
  "Toggle nvim-dap-ui" }
lvim.builtin.which_key.mappings["o"] = { "<cmd>ClangdSwitchSourceHeader<CR>",
  "Switch between source and header file" }
lvim.builtin.which_key.mappings["l"]["o"] = { "<cmd>SymbolsOutline<CR>",
  "Toggle symbols outline" }
lvim.builtin.which_key.mappings["2"] = {
  ["q"] = { "<cmd>TodoQuickFix<CR>", "Show quickfix list with todos" },
  ["t"] = { "<cmd>TodoTelescope<CR>", "Search through quickfix list with todos" },
}
lvim.builtin.which_key.mappings["r"] = { "<cmd>e!<CR>", "Revert to latest saved version" }
lvim.builtin.which_key.mappings["t"] = {
  ["b"] = { "<cmd>Build<CR>", "Build project" },
  ["B"] = { "<cmd>BuildCustom<CR>", "Build project with custom build tools args" },
  ["c"] = { "<cmd>AsyncStop<CR>", "Cancel running task" },
  ["k"] = { "<cmd>AsyncStop!<CR>", "Kill running task" },
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.terminal.shell = "fish"
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.sections = {
  lualine_a = { 'mode' },
  lualine_b = { 'branch', 'diff', 'diagnostics' },
  lualine_c = { 'filename' },
  lualine_x = { 'encoding', 'fileformat', 'filetype' },
  lualine_y = { 'progress' },
  lualine_z = { 'location' }
}
lvim.builtin.lualine.on_config_done = function(lualine)
  local config = lualine.get_config()
  local navic = require("nvim-navic")
  table.insert(config.sections.lualine_c, { navic.get_location, cond = navic.is_available })
  lualine.setup(config)
end
lvim.builtin.dap.active = true
lvim.builtin.gitsigns.opts.current_line_blame = true

-- if you don't want all the parsers change this to a table of the ones you want
-- lvim.builtin.treesitter.ensure_installed = {
--   "bash",
--   "c",
--   "cpp",
--   "javascript",
--   "json",
--   "lua",
--   "python",
--   "typescript",
--   "tsx",
--   "css",
--   "rust",
--   "java",
--   "yaml",
-- }

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.auto_install = true

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
lvim.lsp.installer.setup.ensure_installed = {
  "sqls",
}
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = true
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skiipped for the current filetype
-- vim.tbl_map(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
lvim.lsp.on_attach_callback = function(client, bufnr)
  require("nvim-navic").attach(client, bufnr)
end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "autopep8", filetypes = { "python" } },
  { command = "cmake-format", filetypes = { "cmake" } },
  { command = "prettier", filetypes = { "markdown" } },
  { command = "shfmt", filetypes = { "sh" } },
}

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "flake8", filetypes = { "python" } },
  { command = "markdownlint", filetypes = { "markdown" } },
}

-- Additional Plugins
-- lvim.plugins = {
--     {"folke/tokyonight.nvim"},
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }
lvim.plugins = {
  { "Mofiqul/vscode.nvim" },
  {
    "tpope/vim-surround",
    keys = { "c", "d", "y" }
    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    -- setup = function()
    --  vim.o.timeoutlen = 500
    -- end
  },
  { "justinmk/vim-sneak" },
  { "vim-scripts/ReplaceWithRegister" },
  { "easymotion/vim-easymotion" },
  { "bkad/CamelCaseMotion" },
  { "nelstrom/vim-visual-star-search" },
  { "kana/vim-textobj-user" },
  { "kana/vim-textobj-function" },
  { "kana/vim-textobj-entire" },
  {
    "lambdalisue/suda.vim",
    setup = function()
      -- vim.g.suda_smart_edit = 1
    end
  },
  { "samoshkin/vim-mergetool" },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    setup = function()
      vim.g.indentLine_enabled = 1
      vim.g.indent_blankline_char = "▏"
      vim.g.indent_blankline_filetype_exclude = { "help", "terminal", "dashboard" }
      vim.g.indent_blankline_buftype_exclude = { "terminal" }
      vim.g.indent_blankline_show_trailing_blankline_indent = false
      vim.g.indent_blankline_show_first_indent_level = false
    end
  },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end
  },
  { "jessarcher/vim-heritage" },
  { "gpanders/editorconfig.nvim" },
  { "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "klen/nvim-config-local",
    config = function()
      require("config-local").setup {
        lookup_parents = true, -- Lookup config files in parent directories
      }
    end
  },
  { "rcarriga/nvim-dap-ui",
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup()
    end
  },
  {
    "someone-stole-my-name/yaml-companion.nvim",
    requires = {
      { "neovim/nvim-lspconfig" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
    config = function()
      require("telescope").load_extension("yaml_schema")
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require('mason-tool-installer').setup {
        ensure_installed = {
          'autopep8',
          'bash-debug-adapter',
          'cmakelang',
          'cpptools',
          'flake8',
          'markdownlint',
          'prettier',
          'shellcheck',
          'shfmt',
          'sqls'
        },
        auto_update = true,
      }
    end,
  },
  {
    "skywind3000/asyncrun.vim",
    setup = function()
      vim.g.asyncrun_open = 8
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup()
    end,
    cmd = "SymbolsOutline",
  },
  { "ray-x/lsp_signature.nvim",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig",
  },
}

for _, plugin in pairs(lvim.plugins) do
  plugin.tag = "*"
end

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
