local overrides = require "custom.plugins.overrides"

return {
    ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
    },

    ["kyazdani42/nvim-tree.lua"] = {
      override_options = overrides.nvimtree,
    },

    -- ["nvim-telescope/telescope.nvim"] = {
    --   override_options = overrides.telescope,
    -- },

    ["nvim-telescope/telescope-fzf-native.nvim"] = {
      module = {"telescope"},
      run = "make",
      config = function()
        -- require("telescope-fzf-native.nvim").setup()
        require("telescope").load_extension("fzf")
      end,
    },

    ["folke/which-key.nvim"] = {
      disable = false,
    },

    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
        require "custom.plugins.null_ls"
      end,
    },

    ["danymat/neogen"] = {
    requires = "nvim-treesitter/nvim-treesitter",
    config = function()
      require('neogen').setup {
        enabled = true,
        languages = {
          python = {
            template = {
              annotation_convention = "reST",
            },
          },
        },
      }
    end,
  },
}
