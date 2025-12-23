local mapx = require("mapx").setup()

-- mapx 
-- @ref: https://github.com/b0o/mapx.nvim
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)