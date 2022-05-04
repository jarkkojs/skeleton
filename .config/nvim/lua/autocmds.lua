local M = {}

function M.setup()
  local buf_check = vim.api.nvim_create_augroup("BufCheck", { clear = true })

  vim.api.nvim_create_autocmd(
    { "FocusGained", "BufEnter" },
    { pattern = "*", command = [[:checktime]], group = buf_check }
  )
end

return M
