local function do_telescope_config()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', "<C-g>", builtin.live_grep, {})
    vim.keymap.set('n', "<C-f>", builtin.current_buffer_fuzzy_find, {})
    vim.keymap.set('n', "<C-p>", builtin.find_files, {})
end

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = do_telescope_config
}
