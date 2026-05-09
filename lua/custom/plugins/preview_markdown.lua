return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function() vim.fn.jobstart('cd app && npx --yes yarn install', { cwd = vim.fn.stdpath('data') .. '/lazy/markdown-preview.nvim' }) end,
  keys = {
    { '<leader>mp', ':MarkdownPreviewToggle<CR>', desc = '[M]arkdown [P]review toggle' },
  },
}
