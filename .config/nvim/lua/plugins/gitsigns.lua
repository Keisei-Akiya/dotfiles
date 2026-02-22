return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    signs = {
      add = { text = "┃" },
      change = { text = "┃" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "┆" },
    },
    -- キーバインド設定（一部）
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns
      vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { buffer = bufnr, desc = "Preview Git Hunk" })
      vim.keymap.set("n", "<leader>hb", function()
        gs.blame_line({ full = true })
      end, { buffer = bufnr, desc = "Git Blame" })
    end,
  },
}
