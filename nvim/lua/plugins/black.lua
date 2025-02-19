return {
  {
    "averms/black-nvim",
    config = function()
      vim.cmd([[command! Black execute ':!black %']]) -- Registers :Black command
    end,
  },
}
