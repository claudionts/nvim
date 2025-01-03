require("lazy").setup({
  { "catppuccin/nvim",                name = "catppuccin", priority = 1000 },
  "tpope/vim-commentary",
  "mattn/emmet-vim",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "ellisonleao/gruvbox.nvim",
  { "elixir-tools/elixir-tools.nvim", tag = "stable",      requires = { "nvim-lua/plenary.nvim" } },
  "dracula/vim",
  "nvim-lualine/lualine.nvim",
  "nvim-treesitter/nvim-treesitter",
  "vim-test/vim-test",
  "lewis6991/gitsigns.nvim",
  "preservim/vimux",
  "christoomey/vim-tmux-navigator",
  "tpope/vim-fugitive",
  "tpope/vim-surround",
  "stevearc/oil.nvim",
  "iberianpig/tig-explorer.vim",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    "vinnymeller/swagger-preview.nvim",
    run = "npm install -g swagger-ui-watcher",
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {"ray-x/lsp_signature.nvim"},
  {
    "VonHeikemen/lsp-zero.nvim",
    requires = {
        {"neovim/nvim-lspconfig"}, {"williamboman/mason.nvim"},
        {"williamboman/mason-lspconfig.nvim"}, {"hrsh7th/nvim-cmp"},
        {"hrsh7th/cmp-buffer"}, {"hrsh7th/cmp-path"},
        {"saadparwaiz1/cmp_luasnip"}, {"hrsh7th/cmp-nvim-lsp"},
        {"hrsh7th/cmp-nvim-lua"}, {"L3MON4D3/LuaSnip"},
        {"rafamadriz/friendly-snippets"}
    }
  }
})
