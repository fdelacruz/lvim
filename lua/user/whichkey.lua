lvim.builtin.which_key.mappings["b"] = { "<Cmd>Telescope buffers<CR>", "Buffers" }
lvim.builtin.which_key.mappings["v"] = { "<Cmd>vsplit<CR>", "vsplit" }
lvim.builtin.which_key.mappings["h"] = { "<Cmd>nohlsearch<CR>", "nohl" }
lvim.builtin.which_key.mappings["q"] = { '<Cmd>lua require("user.functions").smart_quit()<CR>', "Quit" }
lvim.builtin.which_key.mappings["/"] = { '<Cmd>lua require("Comment.api").toggle.linewise.current()<CR>', "Comment" }
-- lvim.builtin.which_key.mappings["c"] = { "<Cmd>Bdelete!<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["gy"] = "Link"
lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<Cmd>lua require('spectre').open()<CR>", "Replace" },
  w = { "<Cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Replace Word" },
  f = { "<Cmd>lua require('spectre').open_file_search()<CR>", "Replace Buffer" },
}
lvim.builtin.which_key.mappings["d"] = {
  name = "Debug",
  b = { "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", "Breakpoint" },
  c = { "<Cmd>lua require'dap'.continue()<CR>", "Continue" },
  i = { "<Cmd>lua require'dap'.step_into()<CR>", "Into" },
  o = { "<Cmd>lua require'dap'.step_over()<CR>", "Over" },
  O = { "<Cmd>lua require'dap'.step_out()<CR>", "Out" },
  r = { "<Cmd>lua require'dap'.repl.toggle()<CR>", "Repl" },
  l = { "<Cmd>lua require'dap'.run_last()<CR>", "Last" },
  u = { "<Cmd>lua require'dapui'.toggle()<CR>", "UI" },
  x = { "<Cmd>lua require'dap'.terminate()<CR>", "Exit" },
}
lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
  a = { "<Cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", "Find hidden files" },
  b = { "<Cmd>Telescope git_branches<CR>", "Checkout branch" },
  c = { "<Cmd>Telescope colorscheme<CR>", "Colorscheme" },
  f = { "<Cmd>Telescope find_files<CR>", "Find files" },
  t = { "<Cmd>Telescope live_grep<CR>", "Find Text" },
  s = { "<Cmd>Telescope grep_string<CR>", "Find String" },
  h = { "<Cmd>Telescope help_tags<CR>", "Help" },
  H = { "<Cmd>Telescope highlights<CR>", "Highlights" },
  i = { "<Cmd>lua require('telescope').extensions.media_files.media_files()<CR>", "Media" },
  l = { "<Cmd>Telescope resume<CR>", "Last Search" },
  M = { "<Cmd>Telescope man_pages<CR>", "Man Pages" },
  r = { "<Cmd>Telescope oldfiles<CR>", "Recent File" },
  R = { "<Cmd>Telescope registers<CR>", "Registers" },
  k = { "<Cmd>Telescope keymaps<CR>", "Keymaps" },
  C = { "<Cmd>Telescope commands<CR>", "Commands" },
}
lvim.builtin.which_key.mappings["g"] = {
  name = "Git",
  -- g = { "<Cmd>lua require 'lvim.core.terminal'.lazygit_toggle(12000)<CR>", "Lazygit" },
  g = { "<Cmd>Neogit<CR>", "Neogit" },
  j = { "<Cmd>lua require 'gitsigns'.next_hunk()<CR>", "Next Hunk" },
  k = { "<Cmd>lua require 'gitsigns'.prev_hunk()<CR>", "Prev Hunk" },
  l = { "<Cmd>GitBlameToggle<CR>", "Blame" },
  p = { "<Cmd>lua require 'gitsigns'.preview_hunk()<CR>", "Preview Hunk" },
  r = { "<Cmd>lua require 'gitsigns'.reset_hunk()<CR>", "Reset Hunk" },
  R = { "<Cmd>lua require 'gitsigns'.reset_buffer()<CR>", "Reset Buffer" },
  s = { "<Cmd>lua require 'gitsigns'.stage_hunk()<CR>", "Stage Hunk" },
  u = {
    "<Cmd>lua require 'gitsigns'.undo_stage_hunk()<CR>",
    "Undo Stage Hunk",
  },
  n = { ":!git checkout -b ", "Checkout New Branch" },
  o = { "<Cmd>Telescope git_status<CR>", "Open changed file" },
  b = { "<Cmd>Telescope git_branches<CR>", "Checkout branch" },
  c = { "<Cmd>Telescope git_commits<CR>", "Checkout commit" },
  f = { "<Cmd>Telescope git_bcommits<CR>", "Checkout buffer commit" },
  d = {
    "<Cmd>Gitsigns diffthis HEAD<CR>",
    "Diff",
  },
  G = {
    name = "Gist",
    a = { "<Cmd>Gist -b -a<CR>", "Create Anon" },
    d = { "<Cmd>Gist -d<CR>", "Delete" },
    f = { "<Cmd>Gist -f<CR>", "Fork" },
    g = { "<Cmd>Gist -b<CR>", "Create" },
    l = { "<Cmd>Gist -l<CR>", "List" },
    p = { "<Cmd>Gist -b -p<CR>", "Create Private" },
  },
}
lvim.builtin.which_key.mappings["l"] = {
  name = "LSP",
  a = { "<Cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
  c = { "<Cmd>lua require('copilot.suggestion').toggle_auto_trigger()<CR>", "Get Capabilities" },
  -- c = { "<Cmd>lua require('user.lsp').server_capabilities()<CR>", "Get Capabilities" },
  d = { "<Cmd>TroubleToggle<CR>", "Diagnostics" },
  w = {
    "<Cmd>Telescope lsp_workspace_diagnostics<CR>",
    "Workspace Diagnostics",
  },
  f = { "<Cmd>lua vim.lsp.buf.format({ async = true })<CR>", "Format" },
  F = { "<Cmd>LspToggleAutoFormat<CR>", "Toggle Autoformat" },
  i = { "<Cmd>LspInfo<CR>", "Info" },
  h = { "<Cmd>lua require('lsp-inlayhints').toggle()<CR>", "Toggle Hints" },
  H = { "<Cmd>IlluminationToggle<CR>", "Toggle Doc HL" },
  I = { "<Cmd>LspInstallInfo<CR>", "Installer Info" },
  j = {
    "<Cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>",
    "Next Diagnostic",
  },
  k = {
    "<Cmd>lua vim.diagnostic.goto_prev({buffer=0})<CR>",
    "Prev Diagnostic",
  },
  v = { "<Cmd>lua require('lsp_lines').toggle()<CR>", "Virtual Text" },
  l = { "<Cmd>lua vim.lsp.codelens.run()<CR>", "CodeLens Action" },
  o = { "<Cmd>SymbolsOutline<CR>", "Outline" },
  q = { "<Cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", "Quickfix" },
  r = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
  R = { "<Cmd>TroubleToggle lsp_references<CR>", "References" },
  s = { "<Cmd>Telescope lsp_document_symbols<CR>", "Document Symbols" },
  S = {
    "<Cmd>Telescope lsp_dynamic_workspace_symbols<CR>",
    "Workspace Symbols",
  },
  t = { '<Cmd>lua require("user.functions").toggle_diagnostics()<CR>', "Toggle Diagnostics" },
  u = { "<Cmd>LuaSnipUnlinkCurrent<CR>", "Unlink Snippet" },
}
lvim.builtin.which_key.mappings["t"] = {
  name = "Tab",
  t = {
    "<Cmd>lua require('telescope').extensions['telescope-tabs'].list_tabs(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Tabs'})<CR>",
    "Find Tab",
  },
  n = { "<Cmd>tabnew %<CR>", "New Tab" },
  c = { "<Cmd>tabclose<CR>", "Close Tab" },
  o = { "<Cmd>tabonly<CR>", "Only Tab" },
}
-- lvim.builtin.cmp.enabled = false
lvim.builtin.which_key.mappings["o"] = {
  name = "Options",
  c = { "<Cmd>lua lvim.builtin.cmp.active = false<CR>", "Completion off" },
  C = { "<Cmd>lua lvim.builtin.cmp.active = true<CR>", "Completion on" },
  -- w = { '<Cmd>lua require("user.functions").toggle_option("wrap")<CR>', "Wrap" },
  -- r = { '<Cmd>lua require("user.functions").toggle_option("relativenumber")<CR>', "Relative" },
  -- l = { '<Cmd>lua require("user.functions").toggle_option("cursorline")<CR>', "Cursorline" },
  -- s = { '<Cmd>lua require("user.functions").toggle_option("spell")<CR>', "Spell" },
  -- t = { '<Cmd>lua require("user.functions").toggle_tabline()<CR>', "Tabline" },
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
  a = { "<Cmd>silent BookmarkAnnotate<CR>", "Annotate" },
  c = { "<Cmd>silent BookmarkClear<CR>", "Clear" },
  b = { "<Cmd>silent BookmarkToggle<CR>", "Toggle" },
  m = { '<Cmd>lua require("harpoon.mark").add_file()<CR>', "Harpoon" },
  ["."] = { '<Cmd>lua require("harpoon.ui").nav_next()<CR>', "Harpoon Next" },
  [","] = { '<Cmd>lua require("harpoon.ui").nav_prev()<CR>', "Harpoon Prev" },
  j = { "<Cmd>silent BookmarkNext<CR>", "Next" },
  s = { "<Cmd>Telescope harpoon marks<CR>", "Search Files" },
  k = { "<Cmd>silent BookmarkPrev<CR>", "Prev" },
  S = { "<Cmd>silent BookmarkShowAll<CR>", "Prev" },
  -- s = {
  --   "<Cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<CR>",
  --   "Show",
  -- },
  x = { "<Cmd>BookmarkClearAll<CR>", "Clear All" },
  [";"] = { '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', "Harpoon UI" },
}

which_key.register(m_mappings, m_opts)
