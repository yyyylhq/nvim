-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
{
    function(use)
        use {
            'wbthomason/packer.nvim'
        }

        use {
          'nvim-tree/nvim-tree.lua',

          requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
          },

          tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }

        use {
          "williamboman/mason.nvim"
        }
        use {
            "williamboman/mason-lspconfig.nvim"
        }
        use {
          "neovim/nvim-lspconfig"
        }


        use {
          "ggandor/leap.nvim"
        }

        use {
          "hrsh7th/nvim-cmp"
        }
        use {
            "hrsh7th/cmp-buffer"
        }
        use {
            "hrsh7th/cmp-path"
        }
        use {
            "hrsh7th/cmp-cmdline"
        }
        use {
            "hrsh7th/cmp-nvim-lsp"
        }
        use {
            "hrsh7th/cmp-nvim-lua"
        }

        -- vsnip
        use {
            "hrsh7th/cmp-vsnip"
        }
        use {
            "hrsh7th/vim-vsnip"
        }



  end,

  config = {
    max_jobs = 16,

    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      default_url_format = "https://gitclone.com/github.com/%s",
    },

    display = {
      open_fn = function()
        return require("packer.util").float({ border = "rounded" })
      end,
    },

    profile = {
      enable = true,
      threshold = 1 -- the amount in ms that a plugin's load time must be over for it to be included in the profile
    },
  }

})
