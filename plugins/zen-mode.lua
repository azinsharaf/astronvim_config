return {
	"folke/zen-mode.nvim",
	enabled = true,
	event = "VeryLazy",
	config = function()
		require("zen-mode").setup {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			}
	end,
	keys = {
    { "<leader>uz", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
  }
}
