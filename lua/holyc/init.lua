-- ~/.config/nvim/init.lua
-- Main entrypoint for the Neovim configuration

-- ===================================================================
-- 1. BOOTSTRAP LAZY.NVIM (Plugin Manager)
--    This code checks if lazy.nvim is installed. If not, it downloads it.
-- ===================================================================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ===================================================================
-- 2. LOAD CORE SETTINGS
--    This loads basic options before any plugins are loaded.
-- ===================================================================
require("core.options")

-- ===================================================================
-- 3. SETUP PLUGINS
--    This tells lazy.nvim to load all .lua files found in the
--    `lua/plugins/` directory. Each file in that directory
--    should return a table of plugins.
-- ===================================================================
require("lazy").setup("plugins")

-- You can add any final commands or autocommands here if needed
-- print("✅ Neovim config loaded successfully!")
