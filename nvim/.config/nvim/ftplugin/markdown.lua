vim.api.nvim_create_user_command("MetaMark", function()
  vim.cmd [[
  let _params = 'BEGINFILE{print"---\nfontsize: 12pt\ngeometry:\n\t- margin=1in\nheader-includes:\n\t- \\usepackage{polyglossia}\n\t- \\setdefaultlanguage{spanish}\n\t- \\setotherlanguage[variant=ancient]{greek}\n\t- \\setmainfont{Droid Serif}\n---\n"} 1'
  exec "silent !awk -i inplace " .. "'" .. _params .. "'" .. " '%:p'"
  ]]
end, {})

vim.api.nvim_create_user_command("ZathuraPandoc", function()
  vim.cmd("silent !zathura " .. vim.fn.expand "%:p:r" .. ".pdf" .. " & disown")
  vim.cmd "redraw!"
end, {})

local wk = require "which-key"

wk.add {
  {
    "<leader>wa",
    "<cmd>!pandoc --pdf-engine=lualatex -t pdf --highlight-style=kate -s -o %:p:r.pdf %:p<cr>",
    desc = "Pandoc",
    icon = { icon = "", color = "yellow" },
  },
  { "<leader>wl", "<cmd>LspStart ltex<cr>", desc = "Lsp lTeX", icon = { icon = "󰴄", color = "azure" } },
  { "<leader>wm", "<cmd>w<cr><cmd>MetaMark<cr>", desc = "MetaMark", icon = { icon = "󰮳", color = "yellow" } },
  { "<leader>wz", "<cmd>ZathuraPandoc<cr>", desc = "Zathura", icon = { icon = "󰂽", color = "yellow" } },
}

vim.keymap.set("n", ",,", "<cmd>keepp /<++><cr>ca<", { noremap = true, silent = true })
vim.keymap.set("i", ",,", "<esc><cmd>keepp /<++><cr>ca<", { noremap = true, silent = true })
