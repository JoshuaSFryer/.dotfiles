return {
  'coffebar/neovim-project',
  opts = {
    projects = {
      '~/src/*',
      '~/.config/*',
    },
  },
  init = function()
    vim.opt.sessionoptions:append 'globals' -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim' },
    { 'shatur/neovim-session-manager' },
  },
  lazy = false,
  priority = 100,
}
