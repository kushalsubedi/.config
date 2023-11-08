-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use {"wbthomason/packer.nvim"}
     use { "github/copilot.vim" }
     use {"windwp/nvim-autopairs"}
  use { "catppuccin/nvim", as = "catppuccin" }
  use {'nvim-telescope/telescope.nvim', tag = '0.1.2',
  -- or                            , branch = '0.1.x',
    requires =  {'nvim-lua/plenary.nvim'} 
  }
    use {
  'nvim-lualine/lualine.nvim',

}

use {
      'nmac427/guess-indent.nvim',
        config = function() require('guess-indent').setup {} end,
    }

use "numToStr/FTerm.nvim"
--
require('packer').use { 'mhartington/formatter.nvim' }
use {
        "glepnir/dashboard-nvim",
             config = function()
                        require("dashboard").setup()
                             end,
                         }
--
use {'akinsho/bufferline.nvim', tag = "*",
requires = 'nvim-tree/nvim-web-devicons'}
vim.opt.termguicolors = true
vim.opt.background = 'dark' 
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.cursorline = true

vim.opt.showmode = false  -- this is for the bottom bar to not show the mode 
vim.opt.showcmd = true

-- Fancy  bufferline
vim.opt.showtabline = 2
vim.opt.tabline = '%!v:lua.require\'luatab\'.tabline()'
vim.opt.tabpagemax = 12
vim.opt.laststatus = 2

-- install without yarn or npm
 use({
        "iamcco/markdown-preview.nvim",
            run = function() vim.fn["mkdp#util#install"]() end,
            })
    --
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })



require("bufferline").setup{}
 require('lualine').setup {
      options = { fmt = string.lower },
      sections = { lualine_a = {
        { 'mode', fmt = function(str) return str:sub(1,1) end } },
                  lualine_b = {'branch'} }
    }
-- for stylish tab barbar
    --use 'romgrk/barbar.nvim'
    -- config barber
    vim.cmd [[ let bufferline = get(g:, 'bufferline', {}) ]]
  
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
      use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
  },
 
    use('nvim-treesitter/nvim-treesitter', {run =':TSUpdate'}),
    use('nvim-treesitter/playground'),
    use('mbbill/undotree'),
--<<<<<<< HEAD
    --use('tpopr/vim-fugitiv')\
    use('tpope/vim-fugitive'),

--=======
    --use('tpopr/vim-fugitiv')
-->>>>>>> main
    

    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        
        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},
  
        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
        -- Formatter 
      --  { "elentok/format-on-save.nvim" },
      }
    }
}
end) 
