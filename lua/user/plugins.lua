-- Additional Plugins
lvim.plugins = {
  "nathom/filetype.nvim",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "karb94/neoscroll.nvim",
  {
    "j-hui/fidget.nvim",
    event = "VeryLazy",
    config = true,
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = true,
  },
  {
    "ThePrimeagen/harpoon",
    event = { "BufReadPost", "BufNewFile" },
    enabled = true,
    config = true,
  },
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "folke/todo-comments.nvim",
  {
    "windwp/nvim-spectre",
    cmd = "Spectre",
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
  },
  {
    "ruifm/gitlinker.nvim",
    lazy = true
  },
  {
    "mattn/vim-gist",
    dependencies =   { "mattn/webapi-vim" },
    lazy = true
  },
  "folke/zen-mode.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  { "catppuccin/nvim", name = "catppuccin" },
  "ggandor/leap.nvim",
  "nacro90/numb.nvim",
  {
    "TimUntersberger/neogit",
    cmd = { "Neogit" },
    enabled = true,
    config = true,
  },
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen" },
    enabled = true,
    config = true,
  },
  "simrat39/rust-tools.nvim",
  {
    "mfussenegger/nvim-dap-python",
    event = "BufEnter *.py",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "BufEnter *.rs",
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
      }
    end,
  },
  "LukasPietzschmann/telescope-tabs",
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    config = {
      auto_open = false,
      use_diagnostic_signs = true, -- en
    },
  },
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = { "hrsh7th/nvim-cmp" },
  },
  {
    "simnalamburt/vim-mundo",
    cmd = "MundoToggle",
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-python",
      "haydenmeade/neotest-jest",
    },
    lazy = true,
    config = function()
      require("user.neotest").setup()
    end,
  },
  {
    "stevearc/overseer.nvim",
    lazy = true,
    cmd = {
      "OverseerToggle",
      "OverseerOpen",
      "OverseerRun",
      "OverseerBuild",
      "OverseerClose",
      "OverseerLoadBundle",
      "OverseerSaveBundle",
      "OverseerDeleteBundle",
      "OverseerRunCmd",
      "OverseerQuickAction",
      "OverseerTaskAction",
    },
    config = function()
      require("overseer").setup()
    end,
  },
  {
    "rcarriga/nvim-notify",
    lazy = true,
    config = function()
      vim.notify = require("notify")
    end,
  },
}
