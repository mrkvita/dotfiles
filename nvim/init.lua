-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd([[
  " Set bold font style for Gruvbox
  augroup GruvboxBold
      autocmd!
      autocmd ColorScheme gruvbox highlight Normal guifg=NONE guibg=NONE gui=bold
      autocmd ColorScheme gruvbox highlight Comment guifg=NONE guibg=NONE gui=bold
  augroup END
]])

require("neo-tree").setup({
  close_if_last_window = true,
  window = {
    width = 20,
    position = "right",
    auto_resize = false,
  },
})

require("orgmode").setup({
  org_agenda_files = "/mnt/ntfs/school/1bit_s2324/planner/*",
  org_default_notes_file = "~/orgfiles/refile.org",
  org_startup_indented = false,
  org_hide_leading_stars = true,
  org_agenda_span = "year",
})
