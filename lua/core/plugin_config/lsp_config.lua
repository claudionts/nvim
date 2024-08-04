local lspconfig = require("lspconfig")

local lsp_defaults = lspconfig.util.default_config
lsp_defaults.capabilities = vim.tbl_deep_extend(
  "force",
  lsp_defaults.capabilities,
  require("cmp_nvim_lsp").default_capabilities()
)

local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.format_on_save({servers = {["gopls"] = {'go'}}, {["elixirls"] = {'elixir'}}})

lsp.on_attach(function(_, bufnr) lsp.default_keymaps({buffer = bufnr}) end)

require("mason-lspconfig").setup({
    handlers = {
        lsp.default_setup,
        lua_ls = function()
            local lua_opts = lsp.nvim_lua_ls()
            require("lspconfig").lua_ls.setup(lua_opts)
        end
    },
    ensure_installed = {
        "dockerls", "jsonls", "elixirls", "yamlls", "lua_ls", "ltex", "clangd",
        "gopls"
    }
})

lsp.setup()

require("lsp_signature").setup()

---- To refactoring in all project:
---- :vimgrep /vim/ `find . -type f`
---- :copen
---- :vimgrep /vim/ `find . -type f`
----
----
