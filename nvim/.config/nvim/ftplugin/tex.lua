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
  {
    "<leader>wa",
    function()
      require("xJUSTEXx").xJUSTEXx "lualatex"
    end,
    desc = "xJAVx LuaLaTeX",
    icon = { icon = "", color = "azure" },
  },
  {
    "<leader>wc",
    function()
      require("xJUSTEXx").xJUSTEXx "pdflatex"
    end,
    desc = "xJAVx LaTeX",
    icon = { icon = "", color = "azure" },
  },
  {
    "<leader>wd",
    function()
      require("xJUSTEXx").xJUSTEXx "cleanmain"
    end,
    desc = "xJAVx CleanMainAuxFiles",
    icon = { icon = "", color = "azure" },
  },
  {
    "<leader>we",
    function()
      require("xJUSTEXx").xJUSTEXx "cleanall"
    end,
    desc = "xJAVx CleanAllFilesAux",
    icon = { icon = "", color = "azure" },
  },
  { "<leader>wl", "<cmd>LspStart ltex<cr>", desc = "Lsp lTeX", icon = { icon = "󰴄", color = "azure" } },
  {
    "<leader>wx",
    function()
      require("xJUSTEXx").xJUSTEXx "pdfxe"
    end,
    desc = "xJAVx XeLaTeX",
    icon = { icon = "", color = "azure" },
  },
  { "<leader>wz", "<cmd>ZathuraSyncTeX<cr>", desc = "ZathuraTeX", icon = { icon = "󰂽", color = "azure" } },
}

vim.keymap.set("n", ",,", "<cmd>keepp /<++><cr>ca<", { noremap = true, silent = true })
vim.keymap.set("i", ",,", "<esc>0<cmd>keepp /<++><cr>ca<", { noremap = true, silent = true })
