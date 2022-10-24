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
vim.opt.spell = true
vim.opt.swapfile = true
vim.opt.tabstop = 4
vim.opt.wrap = true

vim.cmd("command! Build lua Build()")
vim.cmd("command! BuildCustom lua BuildCustom()")

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
-- Windows-style keybindings
lvim.keys.normal_mode["<Tab>"] = ">>"
lvim.keys.visual_mode["<Tab>"] = ">gv"
lvim.keys.normal_mode["<S-Tab>"] = "<<"
lvim.keys.insert_mode["<S-Tab>"] = "<Esc><<i"
lvim.keys.visual_mode["<S-Tab>"] = "<gv"
-- search in selection
lvim.keys.visual_mode["/"] = "<Esc>/\\%V"
-- navigation
lvim.keys.normal_mode["g<Left>"] = "<C-O>"
lvim.keys.normal_mode["g<Right>"] = "<Tab>"
lvim.keys.normal_mode["gt"] = "<C-]>"
-- paste without yank
lvim.keys.normal_mode["gp"] = "<Plug>ReplaceWithRegisterOperator"
lvim.keys.normal_mode["gpp"] = "<Plug>ReplaceWithRegisterLine"
lvim.keys.visual_mode["p"] = "<Plug>ReplaceWithRegisterVisual"

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
lvim.builtin.telescope.pickers.find_files.follow = true
lvim.builtin.telescope.defaults.layout_config.width = 0.95;
lvim.builtin.telescope.defaults.layout_config.height = 0.95;
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings["i"]["<Esc>"] = actions.close

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
-- select all
lvim.builtin.which_key.mappings["a"] = { "ggVG", "Select all" }
lvim.builtin.which_key.vmappings["a"] = { "<Esc>ggVG", "Select all" }
-- navigate between buffers
lvim.builtin.which_key.mappings["<Left>"] = { "<Cmd>bp<CR>", "Go to the previous buffer" }
lvim.builtin.which_key.mappings["<Right>"] = { "<Cmd>bn<CR>", "Go to the next buffer" }
-- save/close/exit
lvim.builtin.which_key.mappings["r"] = { "<Cmd>e!<CR>", "Revert to latest saved version" }
lvim.builtin.which_key.mappings["x"] = { "<Cmd>x<CR>", "Save and exit" }
lvim.builtin.which_key.mappings["C"] = { "<Cmd>bd!<CR>", "Close the current buffer without saving" }
lvim.builtin.which_key.mappings["n"] = { "<Cmd>:ene!<CR>", "New file" }
-- search
lvim.builtin.which_key.mappings["<leader>"] = { "<Cmd>Telescope frecency workspace=CWD<CR>", "Jump to file" }
lvim.builtin.which_key.mappings["s"]["f"] = { "<Cmd>Telescope find_files<CR>", "Find File" }
lvim.builtin.which_key.mappings["s"]["F"] = { "<Cmd>Telescope find_files no_ignore=true<CR>", "Find in All Files" }
lvim.builtin.which_key.mappings["s"]["P"] = { "<Cmd>Telescope projects<CR>", "Recent projects" }
lvim.builtin.which_key.mappings["s"]["o"] = { "<Cmd>Telescope heading treesitter=true<CR>", "Headings" }
lvim.builtin.which_key.mappings["s"]["s"] = { "<Cmd>lua require('spectre').open_file_search()<CR>",
  "Search/replace in current file with Spectre" }
lvim.builtin.which_key.mappings["s"]["w"] = { "<Cmd>lua require('spectre').open_visual({select_word = true, path = vim.fn.fnameescape(vim.fn.expand(\"%:p:.\"))})<CR>",
  "Search for current word in current file with Spectre" }
lvim.builtin.which_key.mappings["s"]["S"] = { "<Cmd>lua require('spectre').open()<CR>", "Search/replace with Spectre" }
lvim.builtin.which_key.mappings["s"]["W"] = { "<Cmd>lua require('spectre').open_visual({select_word = true})<CR>",
  "Search for current word with Spectre" }
lvim.builtin.which_key.vmappings["s"] = {
  name = "+Search",
  s = { "<Esc><Cmd>lua require('spectre').open_visual({path = vim.fn.fnameescape(vim.fn.expand(\"%:p:.\"))})<CR>",
    "Search/replace in current file with Spectre" },
  S = { "<Esc><Cmd>lua require('spectre').open_visual()<CR>", "Search/replace with Spectre" },
}
-- misc
lvim.builtin.which_key.mappings["l"]["o"] = { "<Cmd>SymbolsOutline<CR>", "Toggle symbols outline" }
lvim.builtin.which_key.mappings["l"]["y"] = { "<Cmd>Telescope yaml_schema<CR>", "Select YAML schema" }
lvim.builtin.which_key.mappings["D"] = { "<Cmd>lua require('dapui').toggle()<CR>", "Toggle debugger UI" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Tasks",
  b = { "<Cmd>Build<CR>", "Build project" },
  B = { "<Cmd>BuildCustom<CR>", "Build project with custom args" },
  c = { "<Cmd>AsyncStop<CR>", "Terminate running task" },
  k = { "<Cmd>AsyncStop!<CR>", "Kill running task" },
}
lvim.builtin.which_key.mappings["2"] = {
  name = "+TODO",
  q = { "<Cmd>TodoQuickFix<CR>", "Show quickfix list with TODOs" },
  t = { "<Cmd>TodoTelescope<CR>", "Search through quickfix list with TODOs" },
}

-- navigation in LSP buffers
lvim.lsp.buffer_mappings.normal_mode["gT"] = { vim.lsp.buf.type_definition, "Go to type definition" }
lvim.lsp.buffer_mappings.normal_mode["go"] = { "<Cmd>ClangdSwitchSourceHeader<CR>",
  "Switch between source and header file (C/C++)" }

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
  lualine_a = { "mode" },
  lualine_b = { "branch", "diff", "diagnostics" },
  lualine_c = { "filename" },
  lualine_x = { "encoding", "fileformat", "filetype" },
  lualine_y = { "progress" },
  lualine_z = { "location" }
}
lvim.builtin.lualine.on_config_done = function(lualine)
  local ok, navic = pcall(require, "nvim-navic")
  if ok then
    local config = lualine.get_config()
    table.insert(config.sections.lualine_c, { navic.get_location, cond = navic.is_available })
    lualine.setup(config)
  end
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
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = true
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
  local ok, navic = pcall(require, "nvim-navic")
  if ok then
    navic.attach(client, bufnr)
  end
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
  { command = "black" },
  -- { command = "cmake_format" },
  { command = "gofumpt" },
  { command = "prettier", filetypes = { "markdown", "yaml" } },
  { command = "shfmt" },
  { command = "sql_formatter" },
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
  -- { command = "gitlint" },
  { command = "markdownlint" },
  { command = "pylint" },
  { command = "sqlfluff" },
}

local null_ls = require("null-ls")
local cmake_lint = {
  method = null_ls.methods.DIAGNOSTICS,
  filetypes = { "cmake" },
  -- null_ls.generator creates an async source
  -- that spawns the command with the given arguments and options
  generator = null_ls.generator({
    command = "cmake-lint",
    args = { "-" },
    to_stdin = true,
    from_stderr = false,
    -- choose an output format (raw, json, or line)
    format = "line",
    check_exit_code = function(code, stderr)
      local success = code <= 1
      if not success then
        -- can be noisy for things that run often (e.g. diagnostics), but can
        -- be useful for things that run on demand (e.g. formatting)
        print(stderr)
      end
      return success
    end,
  }),
}
null_ls.register(cmake_lint)

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
      require("spectre").setup({
        live_update = true,
        is_insert_mode = true,
        mapping = {
          -- toggle_line = {
          --   map = "dd",
          --   cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
          --   desc = "toggle current item"
          -- },
          -- enter_file = {
          --   map = "<CR>",
          --   cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
          --   desc = "goto current file"
          -- },
          send_to_qf = {
            map = "<leader>Sq",
            cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
            desc = "send all item to quickfix"
          },
          replace_cmd = {
            map = "<leader>Sc",
            cmd = "<cmd>lua require('spectre.actions').replace_cmd()<CR>",
            desc = "input replace vim command"
          },
          show_option_menu = {
            map = "<leader>So",
            cmd = "<cmd>lua require('spectre').show_options()<CR>",
            desc = "show option"
          },
          run_current_replace = {
            map = "<leader>Sr",
            cmd = "<cmd>lua require('spectre.actions').run_current_replace()<CR>",
            desc = "replace current line"
          },
          run_replace = {
            map = "<leader>SR",
            cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
            desc = "replace all"
          },
          change_view_mode = {
            map = "<leader>Sv",
            cmd = "<cmd>lua require('spectre').change_view()<CR>",
            desc = "change result view mode"
          },
          change_replace_sed = {
            map = "<leader>Ses",
            cmd = "<cmd>lua require('spectre').change_engine_replace('sed')<CR>",
            desc = "use sed to replace"
          },
          change_replace_oxi = {
            map = "<leader>Seo",
            cmd = "<cmd>lua require('spectre').change_engine_replace('oxi')<CR>",
            desc = "use oxi to replace"
          },
          toggle_live_update = {
            map = "<leader>Sl",
            cmd = "<cmd>lua require('spectre').toggle_live_update()<CR>",
            desc = "update change when vim write file."
          },
          toggle_ignore_case = {
            map = "<leader>Si",
            cmd = "<cmd>lua require('spectre').change_options('ignore-case')<CR>",
            desc = "toggle ignore case"
          },
          toggle_ignore_hidden = {
            map = "<leader>Sh",
            cmd = "<cmd>lua require('spectre').change_options('hidden')<CR>",
            desc = "toggle search hidden"
          },
        },
      })
    end
  },
  { "jessarcher/vim-heritage" },
  { "gpanders/editorconfig.nvim" },
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
      require("mason-tool-installer").setup {
        ensure_installed = {
          "bash-debug-adapter",
          "black",
          -- -- "cmakelang",
          "cpptools",
          "debugpy",
          "gitlint",
          "go-debug-adapter",
          -- -- "gofumpt",
          "markdownlint",
          "php-debug-adapter",
          "prettier",
          { "pylint", version = "v2.14.3" },
          "shellcheck",
          -- -- "shfmt",
          "sql-formatter",
          "sqlfluff",
        },
        -- auto_update = true,
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
  { "wellle/targets.vim" },
  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require("telescope").load_extension("frecency")
    end,
    requires = { "tami5/sqlite.lua" },
  },
  { "crispgm/telescope-heading.nvim",
    config = function()
      require("telescope").load_extension("heading")
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      require('dap-python').setup(os.getenv("HOME") .. "/.local/share/nvim/mason/bin/debugpy")
    end,
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
