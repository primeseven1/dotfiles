-- Line numbers instead of tildes
vim.cmd("set number")

-- Indentation
vim.cmd("set autoindent")
vim.cmd("set tabstop=8")
vim.cmd("set shiftwidth=8")
vim.cmd("set softtabstop=8")
vim.cmd("set noexpandtab")

vim.cmd("autocmd FileType py setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab")
vim.cmd("autocmd FileType lua setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab")
vim.cmd("set clipboard+=unnamedplus")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
