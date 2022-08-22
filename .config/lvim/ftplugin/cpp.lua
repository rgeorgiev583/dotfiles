local dap = require('dap')
dap.adapters.cppdbg = {
  id = "cppdbg",
  type = "executable",
  command = os.getenv("HOME") .. "/.local/share/nvim/mason/bin/OpenDebugAD7"
}

