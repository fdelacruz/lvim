local M = {}

function M.setup()
  local status_ok, neotest = pcall(require, "neotest")
  if not status_ok then
    return
  end

  neotest.setup {
    adapters = {
      require "neotest-python" {
        dap = {
          justMyCode = false,
          console = "integratedTerminal",
        },
        args = { "--log-level", "DEBUG", "--quiet" },
        runner = "pytest",
      },
      require "neotest-jest",
      require "neotest-vim-test",
    },
    -- overseer.nvim
    consumers = {
      overseer = require "neotest.consumers.overseer",
    },
    overseer = {
      enabled = true,
      force_default = true,
    },
  }
end

return M
