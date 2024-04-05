vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Ex<CR>") --vim.cmd.Ex)

-- Move block up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move next line to current line
vim.keymap.set("n", "J", "mzJ`z") 

-- Half page jump
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set('n', '<leader>nt', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>nf', vim.cmd.NvimTreeFocus)

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]],{noremap=true})

-- Previous buffer, useful for going 'back'
vim.keymap.set('n', '<leader>b', ":bprevious<CR>")

vim.keymap.set('n', '<leader>o', "o<Esc>")
vim.keymap.set('n', '<leader>O', "O<Esc>")

-- Shortcut for Esc which is easier to reach
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('i', 'Kj', '<Esc>')
vim.keymap.set('v', 'kj', '<Esc>')
vim.keymap.set('s', 'kj', '<Esc>')
vim.keymap.set('t', 'kj', [[<C-\><C-n>]], {noremap=true})

vim.keymap.set('i', 'Kj', '<Esc>')
vim.keymap.set('i', 'Kj', '<Esc>')
vim.keymap.set('v', 'Kj', '<Esc>')
vim.keymap.set('s', 'Kj', '<Esc>')
vim.keymap.set('t', 'Kj', [[<C-\><C-n>]], {noremap=true})

vim.keymap.set('i', 'KJ', '<Esc>')
vim.keymap.set('i', 'KJ', '<Esc>')
vim.keymap.set('v', 'KJ', '<Esc>')
vim.keymap.set('s', 'KJ', '<Esc>')
vim.keymap.set('t', 'KJ', [[<C-\><C-n>]], {noremap=true})

-- :W to :w
vim.keymap.set("n", ":W<CR>", ":w<CR>")

vim.cmd[[ command! W w ]]

-- 'Trouble' error viewer keybindings
vim.keymap.set('n', "<leader>tt", function() require("trouble").toggle() end)

opts = {noremap = true, silent = true }
vim.keymap.set('n', "<leader>,", "<Cmd>BufferPrevious<CR>", opts)
vim.keymap.set('n', "<leader>.", "<Cmd>BufferNext<CR>", opts)
vim.keymap.set('n', "<leader>c", "<Cmd>BufferClose<CR>", opts)

-- Finding all Todos
vim.keymap.set('n', "<leader>ll", "<Cmd>TodoTelescope<CR>")

vim.api.nvim_create_user_command(
	"Q",
	"quit",
	{}
)
vim.api.nvim_create_user_command(
	"W",
	"write",
	{}
)
-- Gitsigns
--local gs = package.loaded.gitsigns
--vim.keymap.set('n', "<leader>hs", gs.stage_hunk)
--vim.keymap.set('n', "<leader>hr", gs.reset_hunk)
--vim.keymap.set('n', "<leader>hu", gs.undo_stage_hunk)
--vim.keymap.set('v', '<leader>hs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
--vim.keymap.set('v', '<leader>hr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
--vim.keymap.set('n', "<leader>hS", gs.stage_buffer)
--vim.keymap.set('n', "<leader>hR", gs.reset_buffer)
--vim.keymap.set('n', "<leader>hp", gs.preview_hunk)
--vim.keymap.set('n', "<leader>hb", function() gs.blame_line{full=true} end)
--vim.keymap.set('n', "<leaeder>tb", gs.toggle_current_line_blame)
--vim.keymap.set('n', "<leader>hd", gs.diffthis)
--vim.keymap.set('n', "<leader>hD", function() gs.diffthis('~') end)
--vim.cmd('GitGutterDisable')
