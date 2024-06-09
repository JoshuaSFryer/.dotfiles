return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_z = {
        function()
          return "HI"
        end,
      }
    end,
  },
}
