-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help keymap.set()`

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
local keymap = vim.keymap

keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

    vim.lsp.buf.format()
-- Remap for dealing with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = 'Format current buffer' })
