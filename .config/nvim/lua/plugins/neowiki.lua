return {
  "echaya/neowiki.nvim",
  opts = {
    wiki_dirs = {
      -- neowiki.nvim supports both absolute and tilde-expanded paths
      { name = "Personal", path = "Documents/personal/wiki" },
    },
    keymaps = {
      -- In Normal mode, follows the link under the cursor.
      -- In Visual mode, creates a link from the selection.
      action_link = "<CR>",
      action_link_vsplit = "<S-CR>",
      action_link_split = "<C-CR>",

      -- Jumps to the next link in the buffer.
      next_link = "<Tab>",
      -- Jumps to the previous link in the buffer.
      prev_link = "<S-Tab>",
      -- Navigate back and forth in history.
      navigate_back = "[[",
      navigate_forward = "]]",
      -- Jumps to the index page of the current wiki.
      jump_to_index = "<Backspace>",

      -- Renames the current wiki page and updates backlinks.
      rename_page = "<leader>ir",
      -- Deletes the current wiki page and updates backlinks.
      delete_page = "<leader>id",
      -- Inserts a link to another wiki page.
      insert_link = "<leader>ii",
      -- Removes all links in the current file that point to non-existent pages.
      cleanup_links = "<leader>ic",

      -- Toggles the status of a gtd item.
      -- Works on the current line in Normal mode and on the selection in Visual mode.
      toggle_task = "<leader>it",

      -- Closes the floating window.
      close_float = "q",
    },
  },
  keys = {
    { "<leader>iw", "<cmd>lua require('neowiki').open_wiki()<cr>", desc = "Open Wiki" },
    { "<leader>iW", "<cmd>lua require('neowiki').open_wiki_floating()<cr>", desc = "Open Wiki in Floating Window" },
    { "<leader>iT", "<cmd>lua require('neowiki').open_wiki_new_tab()<cr>", desc = "Open Wiki in Tab" },
  },
}
