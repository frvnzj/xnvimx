local M = {
  "famiu/bufdelete.nvim",
  event = "VeryLazy",
}

function M.config()
  local wk = require "which-key"

  wk.add {
    {
      "<leader>bc",
      "<cmd>lua require('bufdelete').bufdelete(0, false)<cr>",
      desc = "CloseBuffer",
      icon = { icon = "", color = "red" },
    },
  }
end

return M
