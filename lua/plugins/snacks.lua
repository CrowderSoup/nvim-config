return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        replace_netrw = true,
      },
      picker = {
        sources = {
          explorer = {
            -- Show dotfiles (hidden files)
            hidden = true,
            -- Hide files ignored by .gitignore
            ignored = false,
          },
        },
      },
    },
  },
}
