require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      visible = true,        -- show hidden items but dimmed
      hide_dotfiles = false, -- show dotfiles
      hide_gitignored = false, -- show gitignored files
    },
  },
})
