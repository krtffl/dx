local null_ls = require("null-ls")
-- This line imports the Null-LS module

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
-- This line creates a new autocommand group named "LspFormatting"

local opts = {
    sources = {
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports_reviser,
        null_ls.builtins.formatting.golines,
    },
    -- The 'sources' field specifies the formatting tools to be used
    -- 'gofumpt', 'goimports_reviser', and 'golines' are built-in formatting tools provided by Null-LS

    on_attach = function (client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function ()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
    -- The 'on_attach' field is a function that gets called when the LSP client attaches to a buffer
    -- It checks if the client supports the 'textDocument/formatting' method
    -- If it does, it clears any existing autocmds for the current buffer and creates a new one that formats the buffer before saving
}
return opts
-- This block returns the options object, which can be used to configure the Null-LS plugin
