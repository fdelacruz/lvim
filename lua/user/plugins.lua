-- Additional Plugins
lvim.plugins = {
  "nvim-treesitter/nvim-treesitter-textobjects",
  -- "christianchiarulli/nvim-ts-rainbow",
  "karb94/neoscroll.nvim",
  -- "opalmay/vim-smoothie",
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
  "rebelot/kanagawa.nvim",
  { "catppuccin/nvim", name = "catppuccin" },
  -- "hrsh7th/cmp-emoji",
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
  -- "olexsmir/gopher.nvim",
  -- "leoluz/nvim-dap-go",
  {
    "mfussenegger/nvim-dap-python",
    event = "BufEnter *.py",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  -- "renerocksai/calendar-vim",
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
    cmd =  "MundoToggle",
  }

  -- "MunifTanjim/nui.nvim",
  -- {
  --   "folke/noice.nvim",
  --   event = "VimEnter",
  --   config = function()
  --     require("noice").setup()
  --   end,
  -- },

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
}
