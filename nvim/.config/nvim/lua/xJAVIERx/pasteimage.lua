local M = {
  "HakonHarnes/img-clip.nvim",
  event = "VeryLazy",
}

function M.config()
  require("img-clip").setup()

  local wk = require "which-key"

  wk.add {
    { "<leader>wp", "<cmd>PasteImage<cr>", desc = "Img-Clip", icon = { icon = "", color = "azure" } },
  }
end

return M
