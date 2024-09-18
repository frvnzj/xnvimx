local M = {
  "akinsho/bufferline.nvim",
  version = "*",
  -- dependencies = "nvim-tree/nvim-web-devicons",
}

function M.config()
  local highlights = require("catppuccin.groups.integrations.bufferline").get()
  require("bufferline").setup {
    options = {
      show_buffer_close_icons = false,
      -- always_show_bufferline = false,
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          text_align = "center",
          highlight = "Directory",
          separator = false,
        },
      },
    },
    highlights = highlights,
  }

  local wk = require "which-key"

  wk.add {
    { "<leader>bx", "<cmd>BufferLineCloseOthers<cr>", desc = "CloseOthers" },
    { "<leader>bl", "<cmd>BufferLineCloseLeft<cr>", desc = "CloseLeft" },
    { "<leader>br", "<cmd>BufferLineCloseRight<cr>", desc = "CloseRight" },
  }
end

return M
