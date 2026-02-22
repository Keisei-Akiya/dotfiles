return {
  "saghen/blink.cmp",
  version = "*", -- 最新の安定版を使用
  opts = {
    keymap = { preset = "default" }, -- 基本的なVimライクなキーマップ
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
}
