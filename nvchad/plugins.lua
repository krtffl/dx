local plugins = {
-- when combined with a set of tmux key bindings,
-- the plugin will allow you to navigate seamlessly between 
-- vim and tmux splits using a consistent set of hotkeys.
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },
 -- provides configs for the nvim LSP client 
    {
        "neovim/nvim-lspconfig",
        config = function ()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        ft = "go",
        opts = function ()
            return require "custom.configs.null-ls"
        end
    },
-- allows you to easily manage external editor tooling 
-- such as LSP servers, DAP servers, linters, and formatters 
-- through a single interface 
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "gopls",
                "golines",
                "goimports-reviser",
                "gofumpt",
            },
        },
    },
}
return plugins
