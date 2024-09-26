local M = {}

M.set_root = function(new_root)
  local lspconfig = require 'lspconfig'

  -- Update the root directory for the desired language server
  lspconfig.pyright.setup {
    root_dir = function()
      return new_root
    end,
  }

  print('LSP root directory set to ' .. new_root)
end

return M
