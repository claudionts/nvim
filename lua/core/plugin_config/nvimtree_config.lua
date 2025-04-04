require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

vim.keymap.set('n', '<c-b>', ':NvimTreeFindFile<CR>')
vim.keymap.set('n', '<c-b>', ':NvimTreeFindFileToggle<CR>')
