return {
  "ibhagwan/fzf-lua",
  -- dependencies は不要（fzf本体がインストール済みであればOK）
  keys = {
    { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files (fzf)" },
    { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep (fzf)" },
    { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers (fzf)" },
    { "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Help Tags (fzf)" },
    { "<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent Files (fzf)" },
  },
  opts = {
    -- VSCodeっぽく画面中央にふわっと出す設定
    winopts = {
      height = 0.85,
      width = 0.80,
      preview = {
        layout = "vertical", -- プレビューを縦に並べると見やすい
      },
    },
    files = {
      formatter = "path.filename_first", -- ファイル名から先に表示（探しやすくなる）
    },
  },
}
