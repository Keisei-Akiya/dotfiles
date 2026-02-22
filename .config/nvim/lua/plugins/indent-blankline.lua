return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufNewFile" },
  main = "ibl",
  opts = {
    indent = {
      char = "│", -- または "┆" など好みの文字
    },
    scope = {
      enabled = true,
      show_start = false,
    },
  },
}
