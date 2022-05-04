vim.cmd("filetype plugin indent on")

local nmap = require('context').nmap
local require_if = require('context').require_if

require('plugins').setup()
require('autocmds').setup()
require('lualine').setup {}
require('treesitter').setup()

require_if('local')

vim.opt.autoindent = true
vim.opt.backspace = "indent,eol,start"
vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"
vim.opt.compatible = false
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.hidden = true
vim.opt.history = 2000
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.listchars="tab:>-,trail:·"
vim.opt.path:append("**")
vim.opt.ruler = true
vim.opt.shortmess:append("c")
vim.opt.showmatch = true
vim.opt.swapfile = false
vim.opt.tags = "./tags;/"
vim.opt.termguicolors = true
vim.opt.wildmenu = true
vim.opt.wrap = false

nmap("<silent>", "<C-l> :nohl<CR><C-l>")
