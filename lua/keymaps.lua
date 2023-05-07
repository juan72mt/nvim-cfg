function Map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Mappings
Map('n', '<Space>', '', {})
vim.g.mapleader = ' '

local options = {noremap = true}

Map( 'n', '<leader>w', ':w<cr>', options)
Map( 'n', '<leader>q', ':q<cr>', options)
Map( 'n', '<leader>qq', ':q!<cr>', options)

-- -- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


