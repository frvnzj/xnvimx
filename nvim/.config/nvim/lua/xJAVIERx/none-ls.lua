local M = {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}

function M.config()
  local null_ls = require "null-ls"

  -- local code_actions = null_ls.builtins.code_actions
  local completion = null_ls.builtins.completion
  -- local diagnostics = null_ls.builtins.diagnostics
  local formatting = null_ls.builtins.formatting

  null_ls.setup {
    sources = {
      completion.luasnip,
      completion.spell,
      formatting.bibclean,
      formatting.prettierd,
      formatting.shfmt,
      formatting.stylua,
      formatting.typstfmt,
      formatting.yamlfmt,
    },
  }
end

return M
