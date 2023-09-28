return {
  polish = function()
    -- Set up custom filetypes
    vim.filetype.add {
      extension = {
        pyt = "python",
      },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    }
  end,
}
