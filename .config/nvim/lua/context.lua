local M = {}

function M.require_if(module)
  res = pcall(require, module)
  if not(res) then
    print(module, "does not exist")
  end
end

local function map(mode, shortcut, command)
  local opts = { noremap = true, silent = true }

  vim.api.nvim_set_keymap(mode, shortcut, command, opts)
end

local function buf_map(bufnr, mode, shortcut, command)
  local opts = { noremap = true, silent = true }

  vim.api.nvim_buf_set_keymap(bufnr, mode, shortcut, command, opts)
end

function M.buf_nmap(bufnr, shortcut, command)
  buf_map(bufnr, 'n', shortcut, command)
end

function M.cmap(shortcut, command)
  map('c', shortcut, command)
end

function M.nmap(shortcut, command)
  map('n', shortcut, command)
end

function M.imap(shortcut, command)
  map('i', shortcut, command)
end

function M.warn(msg, name)
  vim.notify(msg, vim.log.levels.WARN, { title = name })
end

function M.error(msg, name)
  vim.notify(msg, vim.log.levels.ERROR, { title = name })
end

function M.info(msg, name)
  vim.notify(msg, vim.log.levels.INFO, { title = name })
end

return M
