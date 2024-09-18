local M = {
  "folke/which-key.nvim",
  event = "VeryLazy",
}

function M.config()
  local function toggle_width()
    if vim.api.nvim_win_get_width(0) <= 100 then
      vim.api.nvim_win_set_width(0, 129)
    elseif vim.api.nvim_win_get_width(0) >= 129 then
      vim.api.nvim_win_set_width(0, 65)
    end
  end
  local wk = require "which-key"

  local defaults = {
    preset = "helix",
    -- win = {
    --   wo = {
    --     winblend = 60,
    --   },
    -- },
    -- icons = {
    --   rules = false,
    -- }
  }

  wk.setup(defaults)

  wk.add {
    { "<leader>|", "<cmd>vs<cr>", desc = "VSplit", icon = { icon = "", color = "cyan" } },
    { "<leader>-", toggle_width, desc = "ToggleWindowWidth", icon = { icon = "", color = "cyan" } },
    { "<leader>b", group = "Buffers", icon = { icon = "", color = "cyan" } },
    { "<leader>f", group = "Telescope" },
    { "<leader>t", group = "Trouble", icon = { icon = "", color = "orange" } },
    { "<leader>g", group = "Git" },
    { "<leader>i", group = "ReplaceWord", icon = { icon = "", color = "cyan" } },
    { "<leader>l", group = "LSP", icon = { icon = "󰒋", color = "purple" } },
    { "<leader>w", group = "Writer", icon = { icon = "", color = "red" } },
    { "<leader>wn", "<cmd>ProJustex<cr>", desc = "Nuevo Ensayo", icon = { icon = "", color = "blue" } },
    { "<leader>ws", "<cmd>setlocal spell!<cr>", desc = "Corrector", icon = { icon = "", color = "blue" } },
    { "<leader>x", group = "cmx", icon = { icon = "", color = "cyan" } },
  }
end

return M
