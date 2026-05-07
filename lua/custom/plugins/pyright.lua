local function get_python_path()
  local cwd = vim.fn.getcwd()

  -- Check for .venv directory
  local dotvenv_path = cwd .. "/.venv/bin/python"
  if vim.fn.executable(dotvenv_path) == 1 then
    return dotvenv_path
  end

  -- Check for env directory (no dot)
  local env_path = cwd .. "/venv/bin/python"
  if vim.fn.executable(env_path) == 1 then
    return env_path
  end

  -- Fallback: use uv's python or system python3
  local uv_python = vim.fn.system("uv python find"):gsub("%s+", "")
  if uv_python ~= "" then
    return uv_python
  end

  -- Final fallback: system python3
  return vim.fn.exepath("python3")
end

return {
  'neovim/nvim-lspconfig',
  config = function()
    vim.lsp.config('pyright', {
      settings = {
        python = {
          pythonPath = get_python_path(),
        },
      },
    })
  vim.lsp.enable('pyright')
  end,
}
