local wk = require("which-key")

wk.add({
  { "<leader>T", group = "TidalCycles" },
  { "<leader>Tl", "<cmd>TidalLaunch<cr>", desc = "TidalLaunch", icon = { icon = "󱓞", color = "red" } },
  { "<leader>Tq", "<cmd>TidalQuit<cr>", desc = "TidalQuit" }
})
