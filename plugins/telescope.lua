return {
  "nvim-telescope/telescope.nvim",
  event = "VeryLazy", -- this will load it after the dashboard
  dependencies = {
    "nvim-telescope/telescope-hop.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-telescope/telescope-media-files.nvim",
    "nvim-telescope/telescope-project.nvim",
    "debugloop/telescope-undo.nvim",
    "jvgrootveld/telescope-zoxide",
    "tsakirist/telescope-lazy.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  keys = {
    -- telescope plugin mappings
    -- { "<leader>fB", "<cmd>Telescope bibtex<cr>",       desc = "Find BibTeX" },
    { "<leader>fe", "<cmd>Telescope file_browser<cr>", desc = "File explorer" },
    { "<leader>fM", "<cmd>Telescope media_files<cr>",  desc = "Find media" },
    {
      "<leader>fp",
      function() require("telescope").extensions.project.project { display_type = "full" } end,
      desc = "Find projects",
    },
    { "<leader>fu", "<cmd>Telescope undo<cr>",         desc = "Undo" },
    { "<leader>fz", "<cmd>Telescope zoxide list<cr>",  desc = "Zoxide" },
    { "<leader>fl", "<cmd>Telescope lazy<cr>",         desc = "Lazy" },
    { "<leader>fy", "<cmd>Telescope yank_history<cr>", desc = "Yank History" },
    {
      "<leader>fx",
      function() require('telescope.builtin').live_grep({grep_open_files=true}) end,
      desc = "Find in all buffers",
    },

    -- open buffers
    {
      "<Tab>",
      function()
        if #vim.t.bufs > 1 then require("telescope.builtin").buffers { previewer = false, sort_lastused = true } end
      end,
      desc = "Switch Buffers",
    },
  },
  opts = function(_, opts)
    local telescope = require "telescope"
    local actions = require "telescope.actions"
    local fb_actions = require("telescope").extensions.file_browser.actions
    local hop = telescope.extensions.hop
  end,

  config = function(...)
    require "plugins.configs.telescope" (...)
    local telescope = require "telescope"
    telescope.load_extension "file_browser"
    telescope.load_extension "media_files"
    telescope.load_extension "project"
    telescope.load_extension "undo"
    telescope.load_extension "zoxide"
    telescope.load_extension "lazy"
    telescope.load_extension "fzf"
    telescope.load_extension "yank_history"
  end,
}
