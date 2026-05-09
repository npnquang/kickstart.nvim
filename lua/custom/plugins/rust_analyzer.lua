return {
  'neovim/nvim-lspconfig',
  config = function()
    vim.lsp.config('rust_analyzer', {
      root_markers = { 'Cargo.toml', 'Cargo.lock' },
      settings = {
        ['rust-analyzer'] = {
          cargo = {
            allFeatures = true,
          },
        },
      },
    })
    vim.lsp.enable('rust_analyzer')
  end,
}
