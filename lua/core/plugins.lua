local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		'git',
		'clone',
		'--depth',
		'1',
		'https://github.com/wbthomason/packer.nvim',
		install_path,
	})
	print('Installing packer close and reopen Neovim...')
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require('packer.util').float({ border = 'rounded' })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)

  -- Have packer manage itself
  use 'wbthomason/packer.nvim'
	
  -- file tree
  use 'nvim-tree/nvim-tree.lua'

  --nvim-web-devicons
  use 'nvim-tree/nvim-web-devicons'

  --which-key
  use 'folke/which-key.nvim'

  -- Mason - lsp's
  use 'williamboman/mason.nvim'
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  
  -- Completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  
  -- Telescope dependencies
  -- use 'nvim-lua/plenary.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'BurntSushi/ripgrep'
  
  --Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  
  -- colorschemes
  use 'rafi/awesome-vim-colorschemes'
  use 'polirritmico/monokai-nightasty.nvim'
  
	if PACKER_BOOTSTRAP then
		require('packer').sync()
	end
end)
