local mapx = require("mapx").setup()

-- mapx
-- @ref: https://github.com/b0o/mapx.nvim
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

-- Neotree
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree filesystem reveal right<CR>")

-- save and quit
vim.keymap.set("n", "<leader>w", "<Cmd>w<CR>")
vim.keymap.set("n", "<leader>q", "<Cmd>q<CR>")
