lvim.builtin.which_key.mappings["b"] = { "<Cmd>Telescope buffers<cr>", "Buffers" }
lvim.builtin.which_key.mappings["v"] = { "<Cmd>vsplit<cr>", "vsplit" }
lvim.builtin.which_key.mappings["h"] = { "<Cmd>nohlsearch<cr>", "nohl" }
lvim.builtin.which_key.mappings["q"] = { '<Cmd>lua require("user.functions").smart_quit()<CR>', "Quit" }
lvim.builtin.which_key.mappings["/"] = { '<Cmd>lua require("Comment.api").toggle.linewise.current()<CR>', "Comment" }
-- lvim.builtin.which_key.mappings["c"] = { "<Cmd>Bdelete!<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["gy"] = "Link"
lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<Cmd>lua require('spectre').open()<cr>", "Replace" },
  w = { "<Cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  f = { "<Cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}
lvim.builtin.which_key.mappings["d"] = {
  name = "Debug",
  b = { "<Cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint" },
  c = { "<Cmd>lua require'dap'.continue()<cr>", "Continue" },
  i = { "<Cmd>lua require'dap'.step_into()<cr>", "Into" },
  o = { "<Cmd>lua require'dap'.step_over()<cr>", "Over" },
  O = { "<Cmd>lua require'dap'.step_out()<cr>", "Out" },
  r = { "<Cmd>lua require'dap'.repl.toggle()<cr>", "Repl" },
  l = { "<Cmd>lua require'dap'.run_last()<cr>", "Last" },
  u = { "<Cmd>lua require'dapui'.toggle()<cr>", "UI" },
  x = { "<Cmd>lua require'dap'.terminate()<cr>", "Exit" },
}
lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
  a = { "<Cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>", "Find hidden files" },
  b = { "<Cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<Cmd>Telescope colorscheme<cr>", "Colorscheme" },
  f = { "<Cmd>Telescope find_files<cr>", "Find files" },
  t = { "<Cmd>Telescope live_grep<cr>", "Find Text" },
  s = { "<Cmd>Telescope grep_string<cr>", "Find String" },
  h = { "<Cmd>Telescope help_tags<cr>", "Help" },
  H = { "<Cmd>Telescope highlights<cr>", "Highlights" },
  i = { "<Cmd>lua require('telescope').extensions.media_files.media_files()<cr>", "Media" },
  l = { "<Cmd>Telescope resume<cr>", "Last Search" },
  M = { "<Cmd>Telescope man_pages<cr>", "Man Pages" },
  r = { "<Cmd>Telescope oldfiles<cr>", "Recent File" },
  R = { "<Cmd>Telescope registers<cr>", "Registers" },
  k = { "<Cmd>Telescope keymaps<cr>", "Keymaps" },
  C = { "<Cmd>Telescope commands<cr>", "Commands" },
}
lvim.builtin.which_key.mappings["g"] = {
  name = "Git",
  -- g = { "<Cmd>lua require 'lvim.core.terminal'.lazygit_toggle(12000)<cr>", "Lazygit" },
  g = { "<Cmd>Neogit<cr>", "Neogit" },
  j = { "<Cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
  k = { "<Cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
  l = { "<Cmd>GitBlameToggle<cr>", "Blame" },
  p = { "<Cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
  r = { "<Cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
  R = { "<Cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
  s = { "<Cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
  u = {
    "<Cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
    "Undo Stage Hunk",
  },
  n = { ":!git checkout -b ", "Checkout New Branch" },
  o = { "<Cmd>Telescope git_status<cr>", "Open changed file" },
  b = { "<Cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<Cmd>Telescope git_commits<cr>", "Checkout commit" },
  f = { "<Cmd>Telescope git_bcommits<cr>", "Checkout buffer commit" },
  d = {
    "<Cmd>Gitsigns diffthis HEAD<cr>",
    "Diff",
  },
  G = {
    name = "Gist",
    a = { "<Cmd>Gist -b -a<cr>", "Create Anon" },
    d = { "<Cmd>Gist -d<cr>", "Delete" },
    f = { "<Cmd>Gist -f<cr>", "Fork" },
    g = { "<Cmd>Gist -b<cr>", "Create" },
    l = { "<Cmd>Gist -l<cr>", "List" },
    p = { "<Cmd>Gist -b -p<cr>", "Create Private" },
  },
}
lvim.builtin.which_key.mappings["l"] = {
  name = "LSP",
  a = { "<Cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
  c = { "<Cmd>lua require('copilot.suggestion').toggle_auto_trigger()<cr>", "Get Capabilities" },
  -- c = { "<Cmd>lua require('user.lsp').server_capabilities()<cr>", "Get Capabilities" },
  d = { "<Cmd>TroubleToggle<cr>", "Diagnostics" },
  w = {
    "<Cmd>Telescope lsp_workspace_diagnostics<cr>",
    "Workspace Diagnostics",
  },
  f = { "<Cmd>lua vim.lsp.buf.format({ async = true })<cr>", "Format" },
  F = { "<Cmd>LspToggleAutoFormat<cr>", "Toggle Autoformat" },
  i = { "<Cmd>LspInfo<cr>", "Info" },
  h = { "<Cmd>lua require('lsp-inlayhints').toggle()<cr>", "Toggle Hints" },
  H = { "<Cmd>IlluminationToggle<cr>", "Toggle Doc HL" },
  I = { "<Cmd>LspInstallInfo<cr>", "Installer Info" },
  j = {
    "<Cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>",
    "Next Diagnostic",
  },
  k = {
    "<Cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>",
    "Prev Diagnostic",
  },
  v = { "<Cmd>lua require('lsp_lines').toggle()<cr>", "Virtual Text" },
  l = { "<Cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
  o = { "<Cmd>SymbolsOutline<cr>", "Outline" },
  q = { "<Cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
  r = { "<Cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
  R = { "<Cmd>TroubleToggle lsp_references<cr>", "References" },
  s = { "<Cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
  S = {
    "<Cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
    "Workspace Symbols",
  },
  t = { '<Cmd>lua require("user.functions").toggle_diagnostics()<cr>', "Toggle Diagnostics" },
  u = { "<Cmd>LuaSnipUnlinkCurrent<cr>", "Unlink Snippet" },
}
lvim.builtin.which_key.mappings["t"] = {
  name = "Tab",
  t = {
    "<Cmd>lua require('telescope').extensions['telescope-tabs'].list_tabs(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Tabs'})<cr>",
    "Find Tab",
  },
  n = { "<Cmd>tabnew %<cr>", "New Tab" },
  c = { "<Cmd>tabclose<cr>", "Close Tab" },
  o = { "<Cmd>tabonly<cr>", "Only Tab" },
}
-- lvim.builtin.cmp.enabled = false
lvim.builtin.which_key.mappings["o"] = {
  name = "Options",
  c = { "<Cmd>lua lvim.builtin.cmp.active = false<cr>", "Completion off" },
  C = { "<Cmd>lua lvim.builtin.cmp.active = true<cr>", "Completion on" },
  -- w = { '<Cmd>lua require("user.functions").toggle_option("wrap")<cr>', "Wrap" },
  -- r = { '<Cmd>lua require("user.functions").toggle_option("relativenumber")<cr>', "Relative" },
  -- l = { '<Cmd>lua require("user.functions").toggle_option("cursorline")<cr>', "Cursorline" },
  -- s = { '<Cmd>lua require("user.functions").toggle_option("spell")<cr>', "Spell" },
  -- t = { '<Cmd>lua require("user.functions").toggle_tabline()<cr>', "Tabline" },
}

-- lvim.builtin.which_key.mappings[";"] = nil
-- lvim.builtin.which_key.mappings["c"] = nil
lvim.builtin.which_key.mappings["L"] = nil
lvim.builtin.which_key.mappings["s"] = nil
lvim.builtin.which_key.mappings["w"] = nil

local m_opts = {
  mode = "n", -- NORMAL mode
  prefix = "m",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local m_mappings = {
  a = { "<Cmd>silent BookmarkAnnotate<cr>", "Annotate" },
  c = { "<Cmd>silent BookmarkClear<cr>", "Clear" },
  b = { "<Cmd>silent BookmarkToggle<cr>", "Toggle" },
  m = { '<Cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon" },
  ["."] = { '<Cmd>lua require("harpoon.ui").nav_next()<cr>', "Harpoon Next" },
  [","] = { '<Cmd>lua require("harpoon.ui").nav_prev()<cr>', "Harpoon Prev" },
  j = { "<Cmd>silent BookmarkNext<cr>", "Next" },
  s = { "<Cmd>Telescope harpoon marks<cr>", "Search Files" },
  k = { "<Cmd>silent BookmarkPrev<cr>", "Prev" },
  S = { "<Cmd>silent BookmarkShowAll<cr>", "Prev" },
  -- s = {
  --   "<Cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>",
  --   "Show",
  -- },
  x = { "<Cmd>BookmarkClearAll<cr>", "Clear All" },
  [";"] = { '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon UI" },
}

which_key.register(m_mappings, m_opts)
