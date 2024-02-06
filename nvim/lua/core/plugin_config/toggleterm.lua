return {
{"akinsho/toggleterm.nvim", version = "*",
    config = true,
    opts = {
      direction = "horizontal",
      cmd = "ToggleTerm",
      open_mapping = [[<c-s>]],
      },
    keys = {
      {
        "<c-s>", "<cmd>ToggleTerm<cr>",
        desc = "Toggle terminal",
      },
      { "<leader>0", "<Cmd>2ToggleTerm<Cr>",
        desc = "Terminal #2" },
    }
  }
}
