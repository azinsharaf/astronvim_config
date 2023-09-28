return
{
  "okuuva/auto-save.nvim",
  enabled = false,
  cmd = "ASToggle", -- optional for lazy loading on command
  event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
  opts = {
    -- your config goes here
    -- or just leave it empty :)
    enabled = true,
    execution_message = {
      enabled = false,
    },
  },
}
