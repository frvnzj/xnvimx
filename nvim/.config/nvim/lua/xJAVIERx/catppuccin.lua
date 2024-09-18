local M = {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
}

function M.config()
  require("catppuccin").setup {
    flavour = "mocha",
    transparent_background = true,
    integrations = {
      colorful_winsep = {
        enabled = true,
        color = "red",
      },
      diffview = true,
      fidget = true,
      lsp_trouble = true,
      mason = true,
      neotree = true,
      noice = true,
      notify = true,
      telescope = {
        enabled = true,
        style = "nvchad",
      },
      which_key = true,
    },
    highlight_overrides = {
      mocha = function(mocha)
        return {
          CursorLineNr = { fg = mocha.sapphire },
        }
      end,
    },
  }

  vim.cmd.colorscheme "catppuccin"
end

return M
