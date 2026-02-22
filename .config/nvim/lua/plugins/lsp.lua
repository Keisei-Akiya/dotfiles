return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp", -- 補完との連携
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    -- 各言語サーバーの設定 (miseでインストール済みの前提)
    -- 1. Python Ruff
    lspconfig.ruff.setup({
      capabilities = capabilities,
      on_attach = function(client, bufnr)
        -- Ruff のホバー（ドキュメント表示）は弱いので、Pyright 等に譲る場合は false
        client.server_capabilities.hoverProvider = false
      end,
    })

    -- 2. JS/TS (vtsls または ts_ls)
    lspconfig.vtsls.setup({ capabilities = capabilities })

    -- 3. Rust (rust_analyzer)
    -- ※ Rustはrustaceanvimを使うことも多いですが、まずは標準設定で
    lspconfig.rust_analyzer.setup({
      capabilities = capabilities,
      settings = {
        ["rust-analyzer"] = {
          checkOnSave = { command = "clippy" }, -- 保存時にclippyを回す
        },
      },
    })

    -- 4. Lua (lua_ls)
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = { diagnostics = { globals = { "vim" } } },
      },
    })

    -- キーバインドの設定 (LSPがアタッチされた時のみ有効)
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- 定義へジャンプ
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- ホバー表示
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- リネーム
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- コードアクション
      end,
    })
  end,
}
