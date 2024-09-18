local M = {
  "NI57721/vim-socrates",
}

function M.config()
  local wk = require "which-key"

  wk.add {
    { "<leader>wg", "<Plug>(socrates-greed)", desc = "GreekText", icon = { icon = "󱌮", color = "azure" } },
  }
end

return M
