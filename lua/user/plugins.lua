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
    "windwp/nvim-ts-autotag",
    ft = {
      "html",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
      "vue",
      "tsx",
      "jsx",
      "rescript",
      "xml",
      "php",
      "markdown",
      "glimmer",
      "handlebars",
      "hbs",
      "htmldjango",
    },
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
  "ghillb/cybu.nvim",
  {
    "moll/vim-bbye",
    event = "BufEnter",
  },
  "folke/todo-comments.nvim",
  {
    "windwp/nvim-spectre",
    cmd = "Spectre",
  },
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
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
  "MunifTanjim/nui.nvim",
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
      "nvim-neotest/neotest-plenary",
      "haydenmeade/neotest-jest",
      "nvim-neotest/neotest-vim-test",
    },
    lazy = true,
    config = function()
      require("user.neotest").setup()
    end,
  },
}
