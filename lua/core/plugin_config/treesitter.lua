require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "bash",
    "css",
    "erlang",
    "elixir",
    "graphql",
    "javascript",
    "json",
    "lua",
    "html",
    "yaml"
  },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    use_languagetree = true
  },
  indent = {
    enable = true,
  },
}
