local M = {
  "NStefan002/screenkey.nvim",
  lazy = false,
  version = "*",
}

function M.config()
  require("screenkey").setup {
    win_opts = {
      row = -1,
    },
    disable = {
      filetypes = {
        "NeogitStashView",
        "NeogitReflogView",
        "NeogitConsole",
        "NeogitGitCommandHistory",
        "NeogitEditor",
        "NeogitCommitSelectView",
        "NeogitLogView",
        "NeogitStatus",
        "NeogitRefsView",
        "NeogitRebaseTodo",
        "NeogitCommitView",
        "NeogitDiffView",
        "NeogitPopup",
        "NeogitCommitMessage",
      },
    },
    show_leader = false,
    -- group_mappings = true,
    display_infront = { "Telescope*" },
  }

  local wk = require "which-key"
  wk.add {
    { "<leader>k", "<cmd>Screenkey toggle<cr>", desc = "Screenkey", icon = { icon = "󰌌", color = "cyan" } },
  }
end

return M
