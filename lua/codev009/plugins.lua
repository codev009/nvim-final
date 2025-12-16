local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim'      -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'        -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'      -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'          -- Completion
  use 'neovim/nvim-lspconfig'
  use {
    'nvimtools/none-ls.nvim',
    requires = {
      use 'nvimtools/none-ls-extras.nvim',
      use 'nvim-lua/plenary.nvim',
    }
  }
  use 'glepnir/lspsaga.nvim'
  use {
    "L3MON4D3/LuaSnip",
    requires = { "rafamadriz/friendly-snippets" },
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'dinhhuy258/git.nvim'
  use 'turbio/bracey.vim' -- for the live browser preview
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "MunifTanjim/nui.nvim",
    }
  }
  use 'tpope/vim-commentary'
  use 'tpope/vim-eunuch'
end)
