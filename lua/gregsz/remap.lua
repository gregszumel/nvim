vim.g.mapleader = " "

-- can move around multiple lines  when highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- keeps cursor on in place for J
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- keeps cursor in middle when jumpingn
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- doesn't do anything right now...
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- quickfix stuff
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace in line
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- makes file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- quick sourcing
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- MAGMA REMAPS
vim.keymap.set('n', '<leader>mag', '<Plug>MagmaInit')
vim.keymap.set('n', '<leader>mm', ':MagmaEvaluateLine<CR>')
vim.keymap.set('v', '<leader>mm', ':<C-u>MagmaEvaluateVisual<CR>')
vim.keymap.set('n', '<leader>mh', 'viw:<C-u>MagmaEvaluateVisual<CR>')
vim.keymap.set('n', '<leader>me', ':MagmaReevaluateCell<CR>')
vim.keymap.set('n', '<leader>ms', ':MagmaShowOutput<CR>')


