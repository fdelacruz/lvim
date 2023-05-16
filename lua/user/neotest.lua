local M = {}

function M.setup()
  require("neotest").setup {
    adapters = {
      require "neotest-python" {
        dap = { justMyCode = false },
        runner = "pytest",
      },
      require "neotest-jest",
    },
  }
end

return M
