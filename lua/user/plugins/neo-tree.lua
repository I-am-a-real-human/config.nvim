-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

-- -- set up diagnostic signs
-- signs = {DiagnosticSignError = " ", DiagnosticSignWarn = " ", DiagnosticSignInfo = " ", DiagnosticSignHint = "󰌵"}

-- local diagnostic_signs = {}
-- for type, icon in pairs(signs) do
--   diagnostic_signs[type] = icon
-- end

-- vim.diagnostic.config { signs = { text = diagnostic_signs } }
local signs = { ERROR = '', WARN = '', INFO = '', HINT = '' }
vim.diagnostic.config {
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.INFO] = '',
      [vim.diagnostic.severity.HINT] = '',
    },
  },
}

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    enable_git_status = true,
    enable_git_status_colors = true,
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['l'] = 'open',
          ['h'] = 'close_node',
        },
      },
    },
    default_component_configs = {
      git_status = {
        symbols = {
          -- Change type
          added = '', -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified = '', -- or "", but this is redundant info if you use git_status_colors on the name
          deleted = '✖', -- this can only be used in the git_status source
          renamed = '󰁕', -- this can only be used in the git_status source
          -- Status type
          untracked = '󰰩',
          ignored = '',
          unstaged = '󰄱',
          staged = '',
          conflict = '',
        },
      },
    },
  },
}
