return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles' },
  keys = {
    { '<leader>gd', ':DiffviewOpen<CR>',          desc = '[G]it [D]iff view' },
    { '<leader>gh', ':DiffviewFileHistory %<CR>',  desc = '[G]it file [H]istory' },
    { '<leader>gx', ':DiffviewClose<CR>',          desc = '[G]it diff close' },
  },
  config = function()
    require('diffview').setup {
      view = {
        default = {
          layout = 'diff2_horizontal',
        },
      },
      file_panel = {
        win_config = { height = 20 },
      },
    }
  end,
}
