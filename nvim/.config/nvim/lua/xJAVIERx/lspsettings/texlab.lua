return {
  settings = {
    texlab = {
      bibtexFormatter = "none",
      build = {
        args = { "-lualatex", "-interaction=nonstopmode", "-synctex=-1", "%f" },
        executable = "latexmk",
        forwardSearchAfter = false,
        onSave = false,
      },
      chktex = {
        onEdit = false,
        onOpenAndSave = true,
      },
      diagnosticsDelay = 300,
      formatterLineLength = 0,
      forwardSearch = {
        args = { "%p", "--synctex-forward", "%l" .. ":" .. vim.api.nvim_win_get_cursor(0)[2] .. ":" .. "%f" },
        executable = "zathura",
      },
      latexFormatter = "latexindent",
      latexindent = {
        modifyLineBreaks = false,
      },
    },
  },
}
