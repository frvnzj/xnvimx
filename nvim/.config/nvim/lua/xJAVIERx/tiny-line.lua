local M = {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy", -- Or `LspAttach`
}

function M.config()
  require("tiny-inline-diagnostic").setup()
end

return M
