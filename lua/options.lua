local o = vim.opt
local fn = vim.fn
local map = vim.api.nvim_set_keymap

-- plugins' global settings


-- neovim global settings
o.number = true
o.cursorline = true

o.tabstop = 2
o.shiftwidth = 4
o.showmode = false          -- dont show mode line likes "--INSERT--"

o.updatetime = 300          -- faster completion
o.timeoutlen = 400
o.ttimeoutlen = 0           -- ms
o.backup = false            -- no create a backup
o.swapfile = false
o.history = 200             -- max history
o.clipboard = "unnamedplus" -- allows nvim to access the system clipboard
o.ignorecase = false        -- no ignore case when searching words
o.listchars = {
	tab = "┆ ",
	trail = "~",
}
o.list = true
o.shortmess = o.shortmess + "c" -- prevent "pattern not found" messages
o.wildmode = "full"
o.lazyredraw = false
o.completeopt = { "menu", "menuone", "noselect", "noinsert" }
o.wildignorecase = true -- When set case is ignored when completing file names and directories
o.wildignore = [[
.git,.hg,.svn
*.aux,*.out,*.toc
*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
*.mp3,*.oga,*.ogg,*.wav,*.flac
*.eot,*.otf,*.ttf,*.woff
*.doc,*.pdf,*.cbr,*.cbz
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
*.swp,.lock,.DS_Store,._*
*/tmp/*,*.so,*.swp,*.zip,**/node_modules/**,**/target/**,**.terraform/**"
]]

-- leader key
map("n", ",", "", {})
vim.g.mapleader = "\\"

-- highlight on copy
local highlight_yank = vim.api.nvim_create_augroup("highlight_yank", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	group = highlight_yank,
	desc = "highlight on copy",
	callback = function()
		vim.highlight.on_yank({ timeout = 300 })
	end
})

if vim.g.vscode then
	vim.notify = require('vscode').notify
end
