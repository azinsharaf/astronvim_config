return {
  "gbprod/yanky.nvim",
  config = true,
  keys = {
    { "p", mode = { "n", "x" }, "<Plug>(YankyPutAfter)", desc = "Put after" },
    { "P", mode = { "n", "x" }, "<Plug>(YankyPutBefore)", desc = "Put before" },
    { "gp", mode = { "n", "x" }, "<Plug>(YankyGPutAfter)", desc = "GPut after" },
    { "gP", mode = { "n", "x" }, "<Plug>(YankyGPutBefore)", desc = "GPut before" },
    { "<c-n>", mode = { "n", "x" }, "<Plug>(YankyCycleForward)", desc = "Yank Cycle Forward" },
    { "<c-p>", mode = { "n", "x" }, "<Plug>(YankyCycleBackward)", desc = "Yank Cycle Backward" },
  },
  opts = {
    highlight = {
      timer = 200,
    },
  },
}
