local M = {}

function M.setup()
  require("neotest").setup {
    adapters = {
      require "neotest-python" {
        dap = {
          justMyCode = false,
          console = "integratedTerminal"
        },
        args = { "--log-level", "DEBUG", "--quiet" },
        runner = "pytest",
      },
      require "neotest-jest",
    },
  }
end

return M
