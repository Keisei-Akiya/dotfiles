return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  keys = {
    -- <leader>y で Yazi を起動
    {
      "<leader>",
      "<cmd>Yazi<cr>",
      desc = "Open yazi at the current file",
    },
  },
  opts = {
    -- フローティングウィンドウの設定
    open_for_directories = false,
    keymaps = {
      show_help = "<f1>",
    },
  },
}
