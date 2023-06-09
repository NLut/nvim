vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Telescope 
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  -- dependency for better sorting performance
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  --colorscheme  
  use({
  'projekt0n/github-nvim-theme', tag = 'v0.0.7',
-- or                            branch = '0.0.x'
  config = function()
    require('github-theme').setup({
      -- ...
    })
  end
})

  -- nvim-treesitter
  use ('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
  use('nvim-treesitter/playground')
  use("theprimeagen/harpoon")
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
      -- essential plugins
  use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
  -- replace with register contents using motion (gr + motion) grw -replace word
  use("inkarkat/vim-ReplaceWithRegister")  
  -- commenting with gc | gcc or gc(num)h/j/k/l
  use("numToStr/Comment.nvim")

  -- tmux & split window navigation
  use("christoomey/vim-tmux-navigator")
   -- statusline
  use("nvim-lualine/lualine.nvim")
  -- vim-with-me
  use("ThePrimeagen/vim-with-me")
  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
  -- toggleterm-terminal 
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
  end}
-- nvim-tree
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
  config = function()
    require("nvim-tree").setup {}
  end
}
end)
