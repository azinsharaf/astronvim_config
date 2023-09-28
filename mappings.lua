return {
  n = {
    -- disable default bindings
    ["<C-Down>"] = false,
    ["<C-Left>"] = false,
    ["<C-Right>"] = false,
    ["<C-Up>"] = false,
    ["<C-q>"] = false,
    ["<C-s>"] = false,
    ["<leader>o"] = false, -- focus neo-tree
    ["q:"] = ":",
    ["<S-h>"] = false,
    ["<S-j>"] = false,
    ["<S-k>"] = false,
    ["<S-l>"] = false,
    ["<C-d>"] = false,
    ["<C-u>"] = false,
    ["n"] = false,
    -- better search
    -- n = { require("user.utils").better_search "n", desc = "Next search" },
    -- N = { require("user.utils").better_search "N", desc = "Previous search" },
    -- resize with arrows
    ["<Up>"] = { function() require("smart-splits").resize_up(2) end, desc = "Resize split up" },
    ["<Down>"] = { function() require("smart-splits").resize_down(2) end, desc = "Resize split down" },
    ["<Left>"] = { function() require("smart-splits").resize_left(2) end, desc = "Resize split left" },
    ["<Right>"] = { function() require("smart-splits").resize_right(2) end, desc = "Resize split right" },

    ["<leader>n"] = { "<cmd>enew<cr>", desc = "New File" },
    ["<leader>N"] = { "<cmd>tabnew<cr>", desc = "New Tab" },
    ["<leader>."] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD" },

    -- moved to toggleterm.lua plugin
    -- ["<leader><leader>"] = { function() astronvim.toggle_term_cmd "wsl" end, desc = "WSL Fish" },
    -- ["<leader>tt"] = { function() astronvim.toggle_term_cmd "powershell.exe wsl" end, desc = "WSL Fish" },

    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzz" },

  },
  i = {
    -- date/time input
    ["<c-d>"] = { name = "Date/Time" },
    ["<c-d>n"] = { "<c-r>=strftime('%Y-%m-%d')<cr>", desc = "Y-m-d" },
    ["<c-d>x"] = { "<c-r>=strftime('%m/%d/%y')<cr>", desc = "m/d/y" },
    ["<c-d>f"] = { "<c-r>=strftime('%B %d, %Y')<cr>", desc = "B d, Y" },
    ["<c-d>X"] = { "<c-r>=strftime('%H:%M')<cr>", desc = "H:M" },
    ["<c-d>F"] = { "<c-r>=strftime('%H:%M:%S')<cr>", desc = "H:M:S" },
    ["<c-d>d"] = { "<c-r>=strftime('%Y/%m/%d %H:%M:%S -')<cr>", desc = "Y/m/d H:M:S -" },
  },
}
