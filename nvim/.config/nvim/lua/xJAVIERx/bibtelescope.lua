local M = {
  "nvim-telescope/telescope-bibtex.nvim",
}

function M.config()
  local wk = require "which-key"
  wk.add {
    {
      "<leader>wt",
      "<cmd>Telescope bibtex theme=dropdown<cr>",
      desc = "Bibliografía",
      icon = { icon = " ", color = "blue" },
    },
  }

  require("telescope").load_extension "bibtex"
end

return M
