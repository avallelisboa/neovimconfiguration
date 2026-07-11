--Sets spacebar as the leader key
vim.g.mapleader = " "
--Binds the leaderkey(spacebar) plus the cd with the :Ex command in the normal model
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
--

