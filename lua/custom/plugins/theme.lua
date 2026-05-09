return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      -- Choose your flavour
      flavour = 'mocha', -- latte, frappe, macchiato, mocha

      -- Automatically switch based on vim background setting
      background = {
        light = 'latte',
        dark = 'mocha',
      },

      transparent_background = false, -- true for transparent background
      show_end_of_buffer = false,     -- show ~ at end of buffer
      term_colors = true,             -- set terminal colors too

      -- Dim inactive splits
      dim_inactive = {
        enabled = false,
        shade = 'dark',
        percentage = 0.15,
      },

      -- Disable styles globally
      no_italic = false,    -- true to disable ALL italics
      no_bold = false,      -- true to disable ALL bold
      no_underline = false, -- true to disable ALL underlines

      -- Fine-grained style control (use lists of strings)
      styles = {
        comments = { 'italic' },
        functions = { 'bold' },
        keywords = { 'bold' },
        strings = {},
        variables = {},
      },
      -- Plugin integrations
      integrations = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        treesitter = true,
        telescope = { enabled = true },
        mini = { enabled = true },
        which_key = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { 'italic' },
            hints = { 'italic' },
            warnings = { 'italic' },
            information = { 'italic' },
          },
          underlines = {
            errors = { 'underline' },
            hints = { 'underline' },
            warnings = { 'underline' },
            information = { 'underline' },
          },
        },
      },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
