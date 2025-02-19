return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.messages = {
        enabled = true,
        view = "mini",
      }
      opts.views = {
        mini = {
          border = {
            style = "rounded",
          },
          size = {
            width = 0.3,
            height = "auto",
            max_height = 3,
          },
        },
      }
    end,
  },
}
