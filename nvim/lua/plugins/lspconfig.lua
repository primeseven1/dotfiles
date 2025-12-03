local servers = {
    "asm_lsp", "clangd", "lua_ls", "luau_lsp", "pylsp", "rust_analyzer"
}

local function do_lsp_config()
    vim.lsp.config("pylsp", {
        settings = {
            pylsp = {
                plugins = {
                    pycodestyle = {
                        ignore = { "E501", "E302", "E305" }
                    }
                }
            }
        }
    })

    for _, s in ipairs(servers) do
        vim.lsp.enable(s)
    end
end

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = servers,
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = do_lsp_config
    }
}
