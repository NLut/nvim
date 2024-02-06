vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("v", "x", '"_x')
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

 -- ToggleTerm
vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>");
 -- Prettier
vim.keymap.set("n", "<leader>pt", ":Prettier<CR>")
 -- LiveServer
vim.keymap.set("n", "<leader>ls", ":LiveServer<CR>")
 -- PackerSync
vim.keymap.set("n", "<leader>ps", ":PackerSync<CR>")

 -- LazyGit
vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>")
-- browsersync keymap
-- vim.keymap.set("n", "bo", ":BrowserOpen<CR>")
-- vim.keymap.set("n", "bc", ":BrowserStop<CR>")
