
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)
-- ctrl + shift + hh/jj/kk/ll
vim.keymap.set("n", "<leader>hh", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>jj", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>kk", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>ll", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>hj", function() ui.nav_file(5) end)
vim.keymap.set("n", "<leader>hk", function() ui.nav_file(6) end)
vim.keymap.set("n", "<leader>hl", function() ui.nav_file(7) end)
