return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter", -- 文字入力を始めたら起動
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true, -- 自動で提案を出す
        keymap = {
          accept = "<Tab>", -- Tabで提案を確定
          next = "<M-]>", -- Alt + ] で次の候補
          prev = "<M-[>", -- Alt + [ で前の候補
          dismiss = "<C-]>", -- Ctrl + ] でキャンセル
        },
      },
      panel = { enabled = false }, -- 別パネルは一旦オフ
    })
  end,
}
