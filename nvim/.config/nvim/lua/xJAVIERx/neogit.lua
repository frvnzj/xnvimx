local M = {
  "NeogitOrg/neogit",
  event = "VeryLazy",
  dependencies = {
    -- "sindrets/diffview.nvim",
  },
}

function M.config()
  local icons = require "xJAVIERx.icons"
  local wk = require "which-key"
  wk.add {
    { "<leader>gg", "<cmd>Neogit<CR>", desc = "Neogit" },
  }

  require("neogit").setup {
    disable_hint = false,
    disable_context_highlighting = false,
    disable_signs = false,
    disable_insert_on_commit = "auto",
    filewatcher = {
      interval = 1000,
      enabled = true,
    },
    graph_style = "ascii",
    -- Used to generate URL's for branch popup action "pull request".
    git_services = {
      ["github.com"] = "https://github.com/${owner}/${repository}/compare/${branch_name}?expand=1",
      ["bitbucket.org"] = "https://bitbucket.org/${owner}/${repository}/pull-requests/new?source=${branch_name}&t=1",
      ["gitlab.com"] = "https://gitlab.com/${owner}/${repository}/merge_requests/new?merge_request[source_branch]=${branch_name}",
      ["azure.com"] = "https://dev.azure.com/${owner}/_git/${repository}/pullrequestcreate?sourceRef=${branch_name}&targetRef=${target}",
    },
    remember_settings = true,
    highlight = {
      italic = true,
      bold = true,
      underline = true,
    },
    use_default_keymaps = true,
    auto_refresh = true,
    -- Change the default way of opening neogit
    kind = "split",
    disable_line_numbers = true,
    -- The time after which an output console is shown for slow running commands
    console_timeout = 2000,
    -- Automatically show console if a command takes more than console_timeout milliseconds
    auto_show_console = true,
    -- Automatically close the console if the process exits with a 0 (success) status
    auto_close_console = true,
    -- Change the default way of opening the commit popup
    commit_editor = {
      kind = "split",
    },
    commit_select_view = {
      kind = "split",
    },
    -- customize displayed signs
    signs = {
      -- { CLOSED, OPENED }
      section = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
      item = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
      hunk = { "", "" },
    },
    integrations = {
      diffview = true,
    },
  }
end

return M
