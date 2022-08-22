lvim.builtin.which_key.mappings["o"] = { "<Cmd>ClangdSwitchSourceHeader<CR>", "Switch between source and header file" }

local dap = require('dap')
dap.adapters.cppdbg = {
  id = "cppdbg",
  type = "executable",
  command = os.getenv("HOME") .. "/.local/share/nvim/mason/bin/OpenDebugAD7"
}

