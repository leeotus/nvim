local mapx = require("mapx").setup()

-- mapx
-- @ref: https://github.com/b0o/mapx.nvim
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

-- Neotree
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree filesystem reveal right<CR>")

-- binding keys
vim.keymap.set('n', 'J', '5j')
vim.keymap.set('n', 'K', '5k')
-- vim.keymap.set('n', '<space>q', ':q<Enter>')
-- vim.keymap.set('n', '<space>w', ':w<Enter>')
vim.keymap.set('n', '<C-s>', ':w<Enter>')
vim.keymap.set('n', "<leader>w", ":w<CR>")
vim.keymap.set('n', "<leader>q", ":q<CR>")

-- tabs
vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
vim.keymap.set('n', '<A-[>', '<Cmd>BufferMovePrevious<CR>', opts)
vim.keymap.set('n', '<A-]>', '<Cmd>BufferMoveNext<CR>', opts)

vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
vim.keymap.set('n', '<A-0>', '<Cmd>BufferGoto 0<CR>', opts)

-- hop keymapping
-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', '<leader><leader>f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', '<leader><leader>F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', '<leader><leader>t', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
vim.keymap.set('', '<leader><leader>T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})

vim.keymap.set('n', '<leader><leader>w', '<Cmd>HopWord<CR>')
