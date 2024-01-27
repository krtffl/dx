local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
-- These lines import the 'on_attach' and 'capabilities' functions from the 'lspconfig' module

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")
-- These lines import the 'lspconfig' and 'util' modules

lspconfig.gopls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {"gopls"},
    filetypes = { "go", "gomod", "gowork", "gotmpl"},
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            },
        },
    },
})
-- This block sets up the Go language server protocol (LSP)
-- 'on_attach' and 'capabilities' are callback functions for handling LSP events
-- 'cmd' specifies the command to start the language server
-- 'filetypes' specifies the file types that this LSP should handle
-- 'root_dir' specifies the root directory of the project
-- 'settings' specifies various settings for the language server
