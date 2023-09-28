return {
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    init = function() require("which-key").register({ ["<leader>C"] = { name = "ChatGPT" } }, { mode = "n" }) end,
    config = function()
      require('chatgpt').setup {
      }
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    },
    keys = {
      { "<leader>CC", "<cmd>ChatGPT<cr>", desc = "ChatGPT" },
      { "<leader>Ca", "<cmd>ChatGPTActAs<cr>", desc = "ChatGPT Act As" },
      { "<leader>Cc", "<cmd>ChatGPTCompleteCode<cr>", desc = "ChatGPT Complete Code" },
      { "<leader>Ci", "<cmd>ChatGPTEditWithInstructions<cr>", desc = "ChatGPT Edit with Instrcutions" },
      { "<leader>Cr", "<cmd>ChatGPTRun<cr>", desc = "ChatGPT Run" },
    },
}
