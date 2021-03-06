local cmd = vim.cmd
local o = vim.o
local indent = 2

vim.g.do_filetype_lua = 1
vim.g.did_load_filetypes = 0

o.swapfile = false
o.backup = false
o.writebackup = false
o.hidden = true

-- Tab length
o.shiftwidth = indent
o.tabstop = indent
o.softtabstop = indent

-- Splits
o.splitright = true
o.splitbelow = true

o.cmdheight = 1 -- Neovim commandline space
o.pumheight = 10 -- Pop-up menu height
-- o.colorcolumn = '80'

o.wildmenu = true

-- Indent and tab stuff
o.smartcase = true
o.smartindent = true
o.autoindent = true
o.smarttab = true
o.expandtab = true

o.timeoutlen = 400 -- time to wait for mapped sequence to complete
o.updatetime = 750

o.mouse = 'a' -- Mouse support
o.conceallevel = 1
o.showtabline = 2
o.laststatus = 2
o.clipboard = "unnamed,unnamedplus" -- Use system clipboard
o.syntax = "enable"
o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.background = "dark"
o.guicursor = ""
o.hlsearch = true -- Highlight in real time
o.showmode = false
-- o.foldlevelstart = 99

o.cursorline = true
o.wrap = false
o.undofile = true -- Persist undos
o.inccommand = "nosplit"

-- Scroll offset... just see the :h
o.scrolloff = 8
o.sidescrolloff = 8

-- Numberline stuff
o.number = true
o.relativenumber = true
o.numberwidth = 2
o.signcolumn = "yes"
o.breakindent = true -- Better word Wrapping

-- if (vim.o.shell == 'cmd.exe') then
--   vim.cmd([[
--     set shell=powershell
--     set shellcmdflag=-command
--     set shellquote=\"
--     set shellxquote=
--   ]])
-- end
--
vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf"
  },
  paste = {
    ["+"] = "win32yank.exe -o --crlf",
    ["*"] = "win32yank.exe -o --crlf"
  },
  cache_enable = 0,
}
