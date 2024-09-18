vim.api.nvim_create_user_command("ZathuraSyncTeX", function()
  local get_root = vim.fn.getcwd()
  local name_project = vim.fn.fnamemodify(get_root, ":t")
  local pos = vim.fn.line "." .. ":" .. vim.fn.col "."

  vim.cmd(
    "silent !zathura "
      .. get_root
      .. "/"
      .. name_project
      .. ".pdf "
      .. "--synctex-forward "
      .. pos
      .. ":"
      .. vim.fn.expand "%:p"
      .. " & disown"
  )
  vim.cmd "redraw!"
end, {})

local wk = require "which-key"

wk.add {
  { "<leader>wl", "<cmd>LspStart ltex<cr>", desc = "Lsp lTeX", icon = { icon = "󰴄", color = "azure" } },
  { "<leader>wz", "<cmd>ZathuraSyncTeX<cr>", desc = "ZathuraTeX", icon = { icon = "󰂽", color = "azure" } },
}

vim.keymap.set("n", ",,", "<cmd>keepp /<++><cr>ca<", { noremap = true, silent = true })
vim.keymap.set("i", ",,", "<esc>0<cmd>keepp /<++><cr>ca<", { noremap = true, silent = true })
