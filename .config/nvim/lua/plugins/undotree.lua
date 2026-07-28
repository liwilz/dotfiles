return {
  "jiaoshijie/undotree",
  opts = {
    float_diff = true,
    layout = "left",
    position = "left",
    window = {
      winblend = 0,
    },
  },
  keys = { -- load the plugin only when using it's keybinding:
    { "<leader>uu", "<cmd>lua require('undotree').toggle()<cr>", desc = "Toggle Undo tree" },
  },
}
