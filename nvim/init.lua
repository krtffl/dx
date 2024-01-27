-- Set the number of spaces a tab is equal to
vim.opt.tabstop = 4

-- Set the number of spaces used for indentation when 'expandtab' is set
vim.opt.softtabstop = 4

-- Set the number of spaces used for each step of (auto)indent
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Highlight the column at the specified character position
vim.opt.colorcolumn = "80"

-- Show line numbers
vim.opt.nu = true

-- Show relative line numbers
vim.opt.relativenumber = true

-- Automatically insert indents when starting a new line
vim.opt.smartindent = true

-- Wrap long lines at the screen edge
vim.opt.wrap = true

-- Do not create swap files
vim.opt.swapfile = false

-- Do not create backup files
vim.opt.backup = false

-- Specify the directory for undo files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Save undo history between sessions
vim.opt.undofile = true
