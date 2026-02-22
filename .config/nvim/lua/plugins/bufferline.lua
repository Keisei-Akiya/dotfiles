return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  opts = {
    options = {
      mode = "buffers",
      separator_style = "thin",
      always_show_bufferline = true,
      show_buffer_close_icons = false,
      show_close_icon = false,
      -- Shift + h / l で切り替えられるように、別途キーバインドを設定するのが一般的
    },
  },
  keys = {
    { "H", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "L", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
  },
}
