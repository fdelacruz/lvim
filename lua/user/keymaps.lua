M = {}

local opts = { noremap = true, silent = true }
-- For the description on keymaps, I have a function getOptions(desc) which returns noremap=true, silent=true and desc=desc. Then call: keymap(mode, keymap, command, getOptions("some randome desc")

local keymap = vim.keymap.set

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-Space>", "<Cmd>WhichKey \\<space><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-Tab>", "<C-6>", opts)

function _G.set_terminal_keymaps()
  vim.api.nvim_buf_set_keymap(0, "t", "<m-h>", [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<m-j>", [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<m-k>", [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<m-l>", [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"

-- Smooth scrolling
keymap("n", "<M-j>", "<C-d>", opts)
keymap("n", "<M-k>", "<C-u>", opts)
keymap("n", "<M-m>", "<S-m>", opts)

-- Move current (visual) line / block with J/K
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


keymap("x", "p", [["_dP]])
-- keymap("v", "p", '"_dp', opts)
-- keymap("v", "P", '"_dP', opts)

keymap("n", "Q", "<Cmd>Bdelete!<CR>", opts)

keymap(
  "n",
  "<F6>",
  [[:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>]],
  opts
)
keymap("n", "<F7>", "<Cmd>TSHighlightCapturesUnderCursor<cr>", opts)
keymap("n", "<C-z>", "<Cmd>ZenMode<cr>", opts)
keymap("n", "-", ":lua require'lir.float'.toggle()<cr>", opts)
keymap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
keymap("n", "<M-v>", "<Cmd>lua require('lsp_lines').toggle()<cr>", opts)

keymap("n", "<M-/>", "<Cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<M-/>", '<ESC><Cmd>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', opts)

-- Trouble
keymap("n", "<Leader>xx", "<Cmd>TroubleToggle<cr>", opts)
keymap("n", "<Leader>xw", "<Cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<Leader>xd", "<Cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<Leader>xq", "<Cmd>TroubleToggle quickfix<cr>", opts)
keymap("n", "<Leader>xl", "<Cmd>TroubleToggle loclist<cr>", opts)
keymap("n", "gR", "<Cmd>TroubleToggle lsp_references<cr>", opts)

-- Buffers
vim.api.nvim_set_keymap("n", "<Tab>", ":bn<cr>", opts)
vim.api.nvim_set_keymap("n", "<S-tab>", ":bp<cr>", opts)
vim.api.nvim_set_keymap("n", "<Leader>bd", ":bd<cr>", opts) -- from Doom Emacs

vim.cmd [[
  function! QuickFixToggle()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
      copen
    else
      cclose
    endif
  endfunction
]]

keymap("n", "<M-q>", ":call QuickFixToggle()<cr>", opts)

keymap("n", "<Leader>u", "<Cmd>MundoToggle<cr>", opts)

M.show_documenTation = function()
  local filetype = vim.bo.filetype
  if vim.tbl_contains({ "vim", "help" }, filetype) then
    vim.cmd("h " .. vim.fn.expand "<cword>")
  elseif vim.tbl_contains({ "man" }, filetype) then
    vim.cmd("Man " .. vim.fn.expand "<cword>")
  elseif vim.fn.expand "%:t" == "Cargo.toml" then
    require("crates").show_popup()
  else
    vim.lsp.buf.hover()
  end
end
vim.api.nvim_set_keymap("n", "K", ":lua require('user.keymaps').show_documentation()<CR>", opts)

return M
