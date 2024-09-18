local M = {
  "nvim-neorg/neorg",
  lazy = false,
  version = "*",
}

function M.config()
  local wk = require "which-key"

  wk.add {
    { "<leader>n", group = "Neorg", icon = { icon = "", color = "cyan" } },
    {
      "<leader>ne",
      ":call setreg('+', expand('%:t:r'))<cr>:Neorg export to-file ~/Neorg/markdown/<c-r>+.md",
      silent = false,
      desc = "Export",
      icon = { icon = "", color = "cyan" },
    },
    { "<leader>ni", "<cmd>Neorg index<cr>", desc = "Index", icon = { icon = "", color = "cyan" } },
    { "<leader>nj", "<cmd>Neorg journal today<cr>", desc = "Journal", icon = { icon = "󰠮", color = "cyan" } },
    { "<leader>nm", "<cmd>Neorg inject-metadata<cr>", desc = "Metadata", icon = { icon = "󱂷", color = "cyan" } },
  }

  require("neorg").setup {
    load = {
      ["core.defaults"] = {},
      ["core.keybinds"] = {
        config = {
          default_keybinds = false,
        },
      },
      ["core.concealer"] = {},
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/Neorg/notas",
          },
          default_workspace = "notes",
        },
      },
      ["core.export"] = {},
      ["core.summary"] = {},
    },
  }
end

return M
