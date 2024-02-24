
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.undofile = true
vim.o.termguicolors = true
vim.o.hlsearch = false
vim.wo.number = true
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.wo.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
 pattern = '*',
})

vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set termguicolors")
vim.api.nvim_set_keymap('n', '<leader>oc', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>or',
     "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
 { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ot', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })


-- remap changing split --
vim.api.nvim_set_keymap('n', '<Right>', "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Up>', "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', "<C-w>j", { noremap = true, silent = true })
