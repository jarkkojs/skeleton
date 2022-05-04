local M = {}

function M.setup()
  vim.cmd [[packadd packer.nvim]]

   -- Plugins
  local function plugins(use)
    -- Base
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'

    -- Language syntax
    use 'rhysd/vim-wasm'
    use 'mmarchini/bpftrace.vim'

   -- Interface
    use 'ap/vim-buftabline'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Utilities
    use 'vim-scripts/git_patch_tags.vim'

    -- Themes
    use 'navarasu/onedark.nvim'

    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
  end

  require('packer').startup(plugins)
end

return M
