local M = {
  "grddavies/tidal.nvim",
  opts = {
    --- Configure TidalLaunch command
    boot = {
      tidal = {
        --- Command to launch ghci with tidal installation
        cmd = "ghci",
        args = {
          "-v0",
        },
        --- Tidal boot file path
        file = vim.api.nvim_get_runtime_file("bootfiles/BootTidal.hs", false)[1],
        enabled = true,
      },
      sclang = {
        --- Command to launch SuperCollider
        cmd = "sclang",
        args = {},
        --- SuperCollider boot file
        -- file = vim.api.nvim_get_runtime_file("bootfiles/BootSuperDirt.scd", false)[1],
        file = os.getenv("HOME") .. "/Documentos/supercollider/bootfiles/BootSuperDirt.scd",
        enabled = true,
      },
      split = "v",
    },
    --- Default keymaps
    --- Set to false to disable all default mappings
    --- @type table | nil
    mappings = {
      send_line = { mode = { "i", "n" }, key = "<S-CR>" },
      send_visual = { mode = { "x" }, key = "<S-CR>" },
      send_block = { mode = { "i", "n", "x" }, key = "<M-CR>" },
      send_node = { mode = "n", key = "<leader><CR>" },
      send_silence = { mode = "n", key = "<leader>d" },
      send_hush = { mode = "n", key = "<leader>h" },
    },
    ---- Configure highlight applied to selections sent to tidal interpreter
    selection_highlight = {
      --- Can be either the name of a highlight group or a highlight definition table
      --- see ':h nvim_set_hl' for details
      highlight = "IncSearch",
      --- Duration to apply the highlight for
      timeout = 150,
    },
  },
}

return M
