return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- Disable the Enter key being used to complete suggestions.
      -- (default bound to cmp.mapping.confirm({select = true}))
      opts.mapping["<CR>"] = nil
    end,
  },
}
