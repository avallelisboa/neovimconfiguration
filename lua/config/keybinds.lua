--Sets spacebar as the leader key
vim.g.mapleader = " "
--Binds the leaderkey(spacebar) plus the cd with the :Ex command in the normal model
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
--


--Telescope bindings
--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
--vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
