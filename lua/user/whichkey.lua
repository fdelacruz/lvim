lvim.builtin.which_key.mappings["b"] = { "<cmd>Telescope buffers<CR>", "Buffers" }
lvim.builtin.which_key.mappings["v"] = { "<cmd>vsplit<CR>", "vsplit" }
lvim.builtin.which_key.mappings["h"] = { "<cmd>nohlsearch<CR>", "nohl" }
lvim.builtin.which_key.mappings["q"] = { '<cmd>lua require("user.functions").smart_quit()<CR>', "Quit" }
lvim.builtin.which_key.mappings["/"] = { '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', "Comment" }
-- lvim.builtin.which_key.mappings["c"] = { "<cmd>Bdelete!<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["gy"] = "Link"
lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<cmd>lua require('spectre').open()<CR>", "Replace" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Replace Word" },
  f = { "<cmd>lua require('spectre').open_file_search()<CR>", "Replace Buffer" },
}
lvim.builtin.which_key.mappings["d"] = {
  name = "Debug",
  b = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>", "Breakpoint" },
  c = { "<cmd>lua require'dap'.continue()<CR>", "Continue" },
  i = { "<cmd>lua require'dap'.step_into()<CR>", "Into" },
  o = { "<cmd>lua require'dap'.step_over()<CR>", "Over" },
  O = { "<cmd>lua require'dap'.step_out()<CR>", "Out" },
  r = { "<cmd>lua require'dap'.repl.toggle()<CR>", "Repl" },
  l = { "<cmd>lua require'dap'.run_last()<CR>", "Last" },
  u = { "<cmd>lua require'dapui'.toggle()<CR>", "UI" },
  x = { "<cmd>lua require'dap'.terminate()<CR>", "Exit" },
}
lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
  a = { "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", "Find hidden files" },
  b = { "<cmd>Telescope git_branches<CR>", "Checkout branch" },
  c = { "<cmd>Telescope colorscheme<CR>", "Colorscheme" },
  f = { "<cmd>Telescope find_files<CR>", "Find files" },
  t = { "<cmd>Telescope live_grep<CR>", "Find Text" },
  s = { "<cmd>Telescope grep_string<CR>", "Find String" },
  h = { "<cmd>Telescope help_tags<CR>", "Help" },
  H = { "<cmd>Telescope highlights<CR>", "Highlights" },
  i = { "<cmd>lua require('telescope').extensions.media_files.media_files()<CR>", "Media" },
  l = { "<cmd>Telescope resume<CR>", "Last Search" },
  M = { "<cmd>Telescope man_pages<CR>", "Man Pages" },
  r = { "<cmd>Telescope oldfiles<CR>", "Recent File" },
  R = { "<cmd>Telescope registers<CR>", "Registers" },
  k = { "<cmd>Telescope keymaps<CR>", "Keymaps" },
  C = { "<cmd>Telescope commands<CR>", "Commands" },
}
lvim.builtin.which_key.mappings["g"] = {
  name = "Git",
  -- g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle(12000)<CR>", "Lazygit" },
  g = { "<cmd>Neogit<CR>", "Neogit" },
  j = { "<cmd>lua require 'gitsigns'.next_hunk()<CR>", "Next Hunk" },
  k = { "<cmd>lua require 'gitsigns'.prev_hunk()<CR>", "Prev Hunk" },
  l = { "<cmd>GitBlameToggle<CR>", "Blame" },
  p = { "<cmd>lua require 'gitsigns'.preview_hunk()<CR>", "Preview Hunk" },
  r = { "<cmd>lua require 'gitsigns'.reset_hunk()<CR>", "Reset Hunk" },
  R = { "<cmd>lua require 'gitsigns'.reset_buffer()<CR>", "Reset Buffer" },
  s = { "<cmd>lua require 'gitsigns'.stage_hunk()<CR>", "Stage Hunk" },
  u = {
    "<cmd>lua require 'gitsigns'.undo_stage_hunk()<CR>",
    "Undo Stage Hunk",
  },
  n = { ":!git checkout -b ", "Checkout New Branch" },
  o = { "<cmd>Telescope git_status<CR>", "Open changed file" },
  b = { "<cmd>Telescope git_branches<CR>", "Checkout branch" },
  c = { "<cmd>Telescope git_commits<CR>", "Checkout commit" },
  f = { "<cmd>Telescope git_bcommits<CR>", "Checkout buffer commit" },
  d = {
    "<cmd>Gitsigns diffthis HEAD<CR>",
    "Diff",
  },
  G = {
    name = "Gist",
    a = { "<cmd>Gist -b -a<CR>", "Create Anon" },
    d = { "<cmd>Gist -d<CR>", "Delete" },
    f = { "<cmd>Gist -f<CR>", "Fork" },
    g = { "<cmd>Gist -b<CR>", "Create" },
    l = { "<cmd>Gist -l<CR>", "List" },
    p = { "<cmd>Gist -b -p<CR>", "Create Private" },
  },
}
lvim.builtin.which_key.mappings["l"] = {
  name = "LSP",
  a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
  c = { "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<CR>", "Get Capabilities" },
  -- c = { "<cmd>lua require('user.lsp').server_capabilities()<CR>", "Get Capabilities" },
  d = { "<cmd>TroubleToggle<CR>", "Diagnostics" },
  w = {
    "<cmd>Telescope lsp_workspace_diagnostics<CR>",
    "Workspace Diagnostics",
  },
  f = { "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", "Format" },
  F = { "<cmd>LspToggleAutoFormat<CR>", "Toggle Autoformat" },
  i = { "<cmd>LspInfo<CR>", "Info" },
  h = { "<cmd>lua require('lsp-inlayhints').toggle()<CR>", "Toggle Hints" },
  H = { "<cmd>IlluminationToggle<CR>", "Toggle Doc HL" },
  I = { "<cmd>LspInstallInfo<CR>", "Installer Info" },
  j = {
    "<cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>",
    "Next Diagnostic",
  },
  k = {
    "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<CR>",
    "Prev Diagnostic",
  },
  v = { "<cmd>lua require('lsp_lines').toggle()<CR>", "Virtual Text" },
  l = { "<cmd>lua vim.lsp.codelens.run()<CR>", "CodeLens Action" },
  o = { "<cmd>SymbolsOutline<CR>", "Outline" },
  q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", "Quickfix" },
  r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
  R = { "<cmd>TroubleToggle lsp_references<CR>", "References" },
  s = { "<cmd>Telescope lsp_document_symbols<CR>", "Document Symbols" },
  S = {
    "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>",
    "Workspace Symbols",
  },
  t = { '<cmd>lua require("user.functions").toggle_diagnostics()<CR>', "Toggle Diagnostics" },
  u = { "<cmd>LuaSnipUnlinkCurrent<CR>", "Unlink Snippet" },
}
lvim.builtin.which_key.mappings["t"] = {
  name = "Tab",
  t = {
    "<cmd>lua require('telescope').extensions['telescope-tabs'].list_tabs(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Tabs'})<CR>",
    "Find Tab",
  },
  n = { "<cmd>tabnew %<CR>", "New Tab" },
  c = { "<cmd>tabclose<CR>", "Close Tab" },
  o = { "<cmd>tabonly<CR>", "Only Tab" },
}
-- lvim.builtin.cmp.enabled = false
lvim.builtin.which_key.mappings["o"] = {
  name = "Options",
  c = { "<cmd>lua lvim.builtin.cmp.active = false<CR>", "Completion off" },
  C = { "<cmd>lua lvim.builtin.cmp.active = true<CR>", "Completion on" },
  -- w = { '<cmd>lua require("user.functions").toggle_option("wrap")<CR>', "Wrap" },
  -- r = { '<cmd>lua require("user.functions").toggle_option("relativenumber")<CR>', "Relative" },
  -- l = { '<cmd>lua require("user.functions").toggle_option("cursorline")<CR>', "Cursorline" },
  -- s = { '<cmd>lua require("user.functions").toggle_option("spell")<CR>', "Spell" },
  -- t = { '<cmd>lua require("user.functions").toggle_tabline()<CR>', "Tabline" },
}
lvim.builtin.which_key.mappings["n"] = {
  name = "Neotest",
  a = { "<cmd>lua require('neotest').run.attach()<CR>", "Attach" },
  f = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", "Run File" },
  F = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<CR>", "Debug File" },
  l = { "<cmd>lua require('neotest').run.run_last()<CR>", "Run Last" },
  L = { "<cmd>lua require('neotest').run.run_last({ strategy = 'dap' })<CR>", "Debug Last" },
  n = { "<cmd>lua require('neotest').run.run()<CR>", "Run Nearest" },
  N = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>", "Debug Nearest" },
  o = { "<cmd>lua require('neotest').output.open({ enter = true })<CR>", "Output" },
  S = { "<cmd>lua require('neotest').run.stop()<CR>", "Stop" },
  s = { "<cmd>lua require('neotest').summary.toggle()<CR>", "Summary" },
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
  a = { "<cmd>silent BookmarkAnnotate<CR>", "Annotate" },
  c = { "<cmd>silent BookmarkClear<CR>", "Clear" },
  b = { "<cmd>silent BookmarkToggle<CR>", "Toggle" },
  m = { '<cmd>lua require("harpoon.mark").add_file()<CR>', "Harpoon" },
  ["."] = { '<cmd>lua require("harpoon.ui").nav_next()<CR>', "Harpoon Next" },
  [","] = { '<cmd>lua require("harpoon.ui").nav_prev()<CR>', "Harpoon Prev" },
  j = { "<cmd>silent BookmarkNext<CR>", "Next" },
  s = { "<cmd>Telescope harpoon marks<CR>", "Search Files" },
  k = { "<cmd>silent BookmarkPrev<CR>", "Prev" },
  S = { "<cmd>silent BookmarkShowAll<CR>", "Prev" },
  -- s = {
  --   "<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<CR>",
  --   "Show",
  -- },
  x = { "<cmd>BookmarkClearAll<CR>", "Clear All" },
  [";"] = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', "Harpoon UI" },
}

which_key.register(m_mappings, m_opts)
