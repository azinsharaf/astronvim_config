return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  keys = {
    -- { "<leader><leader>", function() require("astronvim.utils").toggle_term_cmd "wsl" end, desc = "WSL Fish" },
    -- { "<leader>tt", function() astronvim.toggle_term_cmd "wsl" end, desc = "WSL Fish" },
    { "<esc><esc>", mode = { "t" }, "<C-\\><C-n>:q<cr>", desc = "Terminal quit" },
  },
}
