return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      -- Python: Ruffを使用
      python = { "ruff_format", "ruff_organize_imports" },

      -- JS/TS: Biomeを使用
      javascript = { "biome" },
      typescript = { "biome" },
      javascriptreact = { "biome" },
      typescriptreact = { "biome" },
      json = { "biome" },

      -- Rust: 標準のrustfmtを使用
      rust = { "rustfmt" },

      -- Lua: Stylua (ついでに入れておくと便利)
      lua = { "stylua" },

      -- Fish: fish_indent
      fish = { "fish_indent" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
