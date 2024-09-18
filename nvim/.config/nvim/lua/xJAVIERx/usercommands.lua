vim.api.nvim_create_user_command("ExportToHtmlWithNumbers", function()
  local html_content = require("tohtml").tohtml(0, { number_lines = true })

  require("utils.floatwin").floatwin(html_content)

  vim.cmd [[
  filetype detect
  silent write! /tmp/outputcode.html
  call setreg('+', "/tmp/outputcode.html")
  ]]
end, {})

vim.api.nvim_create_user_command("TexProjectArticle", function()
  require("utils.project_tex").create_tex_project_article()
end, {})
