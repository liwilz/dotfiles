return {
  {
    "nvim-lua/plenary.nvim",
    lazy = false, -- load immediately so we can register the autocmd
    config = function()
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          vim.cmd.colorscheme("dms")
        end,
      })
    end,
  },
}
