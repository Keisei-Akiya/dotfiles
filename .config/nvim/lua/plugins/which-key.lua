return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- 1秒待たずに表示したい場合は delay を調整
    delay = 500,
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
