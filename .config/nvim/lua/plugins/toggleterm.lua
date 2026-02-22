return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-t>]], -- Ctrl+t で開閉
      direction = "float", -- フローティングウィンドウで開く
      float_opts = { border = "curved" },
    })

    -- Lazygit専用の関数設定
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

    function _LAZYGIT_TOGGLE()
      lazygit:toggle()
    end

    -- <leader>g で Lazygit を起動
    vim.keymap.set("n", "<leader>g", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { noremap = true, silent = true })
  end,
}
