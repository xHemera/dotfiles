-- Setup for Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Lazy setup
require("lazy").setup({
	-- Lualine
	{
		'nvim-lualine/lualine.nvim',
		require = { 'nvim-tree/nvim-web-devicons', opt = true },
		config = function()
			require('lualine').setup {
				options = { theme = 'onedark' }
			}
		end,
	},

	-- One Dark theme
	{
		'navarasu/onedark.nvim',
		config = function()
			require('onedark').setup {
				style = 'dark'
			}
			require('onedark').load()
		end,
	},

	-- Autopairs
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
	}
})

-- Nvim options
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
