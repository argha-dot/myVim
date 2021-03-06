local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = {"c", "lua", "rust", "html", "json", "json5", "latex", "markdown",
    "python", "regex", "scss", "tsx", "typescript", "vim", "yaml", "toml", "css", "cpp", 
    "dockerfile", "cmake", "go", "make"
  },
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  auto_install = true,
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, disable = { "yaml" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  autotag = {
    enable = true,
  }
}

-- vim.o.foldmethod = 'expr'
-- vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
