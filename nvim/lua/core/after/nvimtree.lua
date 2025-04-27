require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 40,
	side = "left",
  },
  renderer = {
	group_empty = true,
  },
  filters = {
    git_ignored = false, -- Ensure .gitignore files are NOT hidden
  },
})
