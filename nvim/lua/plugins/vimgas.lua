return {
    "HealsCodes/vim-gas",
    config = function()
        vim.cmd("autocmd BufNewFile,BufRead *.S set filetype=gas")
    end
}
