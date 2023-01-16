vim.o.termguicolors = true
vim.g.tokyodark_transparent_background = true
vim.g.tokyodark_enable_italic_comment = true
vim.g.tokyodark_enable_italic = false



-- if (vim.g.neovide) then
--   -- vim.g.tokyodark_transparent_background = false
--
--   vim.cmd [[
--     syntax on
--     colorscheme tokyodark
--   ]]
-- else
--   -- vim.g.tokyodark_transparent_background = true
--
--   vim.cmd [[
--     syntax on
--     colorscheme tokyodark
--   ]]
-- end

vim.cmd.colorscheme("tokyodark")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


vim.cmd[[
  hi clear SignColumn
  hi clear CursorLine
  hi CursorLine cterm=underline gui=underline
  highlight VertSplit guibg=#ff000000
]]

