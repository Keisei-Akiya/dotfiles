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

    -- lua/plugins/toggleterm.lua の config 関数内に追加
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
      vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
      vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
      vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
      vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)
    end

    -- ターミナルを開いた時だけこのキーマップを有効にする
    vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
  end,
}
