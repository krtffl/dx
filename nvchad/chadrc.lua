---@type ChadrcConfig 
-- This line is a type annotation indicating that M will be of type ChadrcConfig

local M = {} -- Declares a new table M

M.ui = {theme = 'palenight', transparency = true} -- Sets the UI theme to 'palenight' and enables transparency
-- The 'theme' field sets the color scheme of the editor
-- The 'transparency' field enables or disables transparency in the editor

M.plugins = 'custom.plugins' -- Sets the plugins to be loaded from a file named 'custom.plugins'
-- The 'plugins' field specifies the file where the list of plugins to be loaded is stored

return M -- Returns the table M, which contains the configuration settings
-- This allows other parts of the program to access these settings
