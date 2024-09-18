vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

vim.opt.mouse = "a"

vim.opt.showmode = false

vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.spelllang = "es_mx"

vim.opt.title = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.breakindent = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.ruler = false

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.udir = os.getenv "HOME" .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.signcolumn = "yes"
-- vim.opt.colorcolumn = "70"

vim.opt.inccommand = "split"
vim.o.splitkeep = "screen"

vim.opt.isfname:append "@-@"
vim.opt.shortmess:append "c"

vim.opt.timeoutlen = 300
vim.opt.updatetime = 250

vim.opt.completeopt = { "menuone", "noselect" }

vim.opt.laststatus = 3
vim.opt.conceallevel = 2

vim.g.netrw_banner = 0
vim.g.netrw_mouse = 2
