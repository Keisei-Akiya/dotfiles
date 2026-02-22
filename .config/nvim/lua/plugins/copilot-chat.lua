return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "zbirenbaum/copilot.lua" },
    { "nvim-lua/plenary.nvim" },
  },
  opts = {
    show_help = "yes", -- ヘルプを表示
    prompts = {
      Explain = "コードを解説してください",
      Fix = "バグを修正してください",
    },
  },
  keys = {
    { "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "Copilot Chat" },
  },
}
