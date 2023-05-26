local status_ok, lab = pcall(require, "lab")
if not status_ok then
  return
end

lab.setup {
  code_runner = {
    enabled = true,
  },
  quick_data = {
    enabled = false,
  },
}

local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<M-4>", ":Lab code run<CR>", opts)
keymap("n", "<M-5>", ":Lab code stop<CR>", opts)
keymap("n", "<M-6>", ":Lab code panel<CR>", opts)
