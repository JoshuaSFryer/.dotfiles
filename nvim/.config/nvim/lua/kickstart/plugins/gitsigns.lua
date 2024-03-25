-- Here is a more advanced example where we pass configuration
-- options to `gitsigns.nvim`. This is equivalent to the following lua:
--    require('gitsigns').setup({ ... })
--
-- See `:help gitsigns` to understand what the configuration keys do
return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            return ']c'
          end
          vim.schedule(function()
            gs.next_hunk()
          end)
          return '<Ignore>'
        end, { expr = true, desc = 'Next Git hunk' })

        map('n', '[c', function()
          if vim.wo.diff then
            return '[c'
          end
          vim.schedule(function()
            gs.prev_hunk()
          end)
          return '<Ignore>'
        end, { expr = true, desc = 'Previous Git hunk' })

        -- Actions
        map('n', '<leader>ghs', gs.stage_hunk, { desc = '[s]tage current hunk' })
        map('n', '<leader>ghr', gs.reset_hunk, { desc = '[r]eset current hunk' })
        map('v', '<leader>ghs', function()
          gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = '[S]tage selected hunk' })
        map('v', '<leader>ghr', function()
          gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = '[R]eset selected hunk' })
        map('n', '<leader>gbs', gs.stage_buffer, { desc = '[B]uffer [S]tage' })
        map('n', '<leader>ghu', gs.undo_stage_hunk, { desc = '[U]ndo hunk staging' })
        map('n', '<leader>gbr', gs.reset_buffer, { desc = '[R]eset buffer' })
        map('n', '<leader>ghp', gs.preview_hunk, { desc = '[P]review hunk' })
        -- map('n', '<leader>hb', function()
        --   gs.blame_line { full = true }
        -- end)
        map('n', '<leader>gtb', gs.toggle_current_line_blame, { desc = '[T]oggle line [B]lame' })
        map('n', '<leader>gbd', gs.diffthis, { desc = '[B]uffer [D]iff' })
        -- map('n', '<leader>hD', function()
        --   gs.diffthis '~'
        -- end)
        map('n', '<leader>gtd', gs.toggle_deleted, { desc = '[T]oggle [D]eleted' })

        -- Text object
        map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
      end,
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
