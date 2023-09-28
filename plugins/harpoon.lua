local prefix = "<leader><leader>"
return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  cmd = { "Harpoon" },
  keys = {
    { prefix, function() end, desc = (vim.g.icons_enabled and "󱡀 " or "") .. "Harpoon" },
    { prefix .. "a", function() require("harpoon.mark").add_file() end, desc = "Add file" },
    { prefix .. "e", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle quick menu" },
    { "<C-j>", function() require("harpoon.ui").nav_prev() end, desc = "Goto previous mark" },
    { "<C-k>", function() require("harpoon.ui").nav_next() end, desc = "Goto next mark" },
    { prefix .. "m", "<cmd>Telescope harpoon marks<CR>", desc = "Show marks in Telescope" },

    {
       "<C-x>",
       function()
         vim.ui.input({ prompt = "Harpoon mark index: " }, function(input)
           local num = tonumber(input)
           if num then require("harpoon.ui").nav_file(num) end
         end)
       end,
       desc = "Goto index of mark",
    },

    { "<C-q>", function() require("harpoon.ui").nav_prev() end, desc = "Goto previous mark" },
    -- { "<C-n>", function() require("harpoon.ui").nav_next() end, desc = "Goto next mark" },

    {
      prefix .. "t",
      function()
        local num = tonumber(vim.fn.input "GoTo terminal window number: ")
        require("harpoon.term").gotoTerminal(num)
      end,
      desc = "Goto to terminal window",
    },
    {
      prefix .. "j",
      function()
        local num = tonumber(vim.fn.input "GoTo Tmux window number: ")
        require("harpoon.tmux").gotoTerminal(num)
      end,
      desc = "Goto to TMUX tmux window",
    },
  },
  config = function()
    require("harpoon").setup {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      }
    }
  end
}
