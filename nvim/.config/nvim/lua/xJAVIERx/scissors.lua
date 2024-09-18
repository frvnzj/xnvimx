local M = {
  "chrisgrieser/nvim-scissors",
}

function M.config()
  require("scissors").setup {
    snippetDir = vim.fn.stdpath "config" .. "/snippets",
    jsonFormatter = "jq",
  }
end

return M
