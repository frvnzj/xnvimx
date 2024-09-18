local M = {
  "mbbill/undotree",
}

function M.config()
  local wk = require "which-key"

  wk.add {
    { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undotree", icon = { icon = "󰣜", color = "yellow" } },
  }
end

return M
