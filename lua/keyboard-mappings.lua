local mapx = require("mapx").setup()

-- mapx
-- @ref: https://github.com/b0o/mapx.nvim

-- binding keys
vim.keymap.set('n', 'J', '5j')
vim.keymap.set('n', 'K', '5k')

-- vim.keymap.set('n', '<space>q', ':q<Enter>')
-- vim.keymap.set('n', '<space>w', ':w<Enter>')
vim.keymap.set('n', '<C-s>', ':w<Enter>')

-- hop keymapping
vim.keymap.set('n', '<leader><leader>w', '<Cmd>HopWord<CR>')
vim.keymap.set('n', '<leader><leader>1', '<Cmd>HopChar1<CR>')
vim.keymap.set('n', '<leader><leader>2', '<Cmd>HopChar2<CR>')

-- spider
vim.keymap.set('n', 'w', "<Cmd>lua require('spider').motion('w')<CR>")
vim.keymap.set('n', 'e', "<Cmd>lua require('spider').motion('e')<CR>")
vim.keymap.set('n', 'b', "<Cmd>lua require('spider').motion('b')<CR>")

-- vscode
if vim.g.vscode then
  vim.keymap.set('n', '?',
    '<Cmd>lua require("vscode").action(\'workbench.action.findInFiles\', { args = { query = vim.fn.expand(\'<cword>\') } })<CR>')

  -- close
  vim.keymap.set('n', '<space>q', '<Cmd>lua require("vscode").action(\'workbench.action.closeActiveEditor\')<CR>')

  -- save
  vim.keymap.set('n', '<space>w', '<Cmd>lua require("vscode").action(\'workbench.action.files.save\')<CR>')

  -- show commands, replace ctrl+shift+p
  vim.keymap.set('n', '<space>p', '<Cmd>lua require("vscode").action(\'workbench.action.showCommands\')<CR>');

  -- show symbols, replace ctrl+shift+o
  vim.keymap.set('n', '<space>o', '<Cmd>lua require("vscode").action(\'workbench.action.gotoSymbol\')<CR>')

  -- rename variable
  vim.keymap.set('n', '<space>r', '<Cmd>lua require("vscode").action(\'editor.action.rename\')<CR>')

  -- move tabs, need extension: Leaper(@Onlylys)
  vim.keymap.set('n', '<space>]', '<Cmd>lua require("vscode").action(\'workbench.action.moveEditorRightInGroup\')<CR>')
  vim.keymap.set('n', '<space>[', '<Cmd>lua require("vscode").action(\'workbench.action.moveEditorLeftInGroup\')<CR>')

  -- replace gt and gT
  vim.keymap.set('n', '<space>=', '<Cmd>lua require("vscode").action(\'workbench.action.nextEditor\')<CR>')
  vim.keymap.set('n', '<space>-', '<Cmd>lua require("vscode").action(\'workbench.action.previousEditor\')<CR>')

  -- fold and unfold
  vim.keymap.set('n', 'za', '<Cmd>lua require("vscode").action(\'editor.toggleFold\')<CR>')
else
  -- normal neovim
  local opts = { noremap = true, silent = true }
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

  vim.keymap.set('n', "<leader>w", ":w<CR>")
  vim.keymap.set('n', "q", "<Cmd>BufferClose<CR>")

  -- telescope
  local tsp = require('telescope.builtin')
  vim.keymap.set('n', '<leader>ff', tsp.find_files, { desc = 'Telescope find files' })
  vim.keymap.set('n', '<leader>fg', tsp.live_grep, { desc = 'Telescope live grep' })
  vim.keymap.set('n', '<leader>fb', tsp.buffers, { desc = 'Telescope buffers' })
  vim.keymap.set('n', '<leader>fh', tsp.help_tags, { desc = 'Telescope help tags' })

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

  -- Neotree
  vim.keymap.set("n", "<leader>e", "<Cmd>Neotree filesystem reveal right<CR>")

  -- portal nvim
  vim.keymap.set("n", "<space>o", "<cmd>Portal jumplist backward<cr>")
  vim.keymap.set("n", "<space>i", "<cmd>Portal jumplist forward<cr>")
end
