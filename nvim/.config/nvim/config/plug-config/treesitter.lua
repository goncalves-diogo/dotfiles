-- Telescope setup
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = false, -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
    }
  }
}
require('telescope').load_extension('coc')
require('telescope').load_extension('fzf')

-- Tree sitter configuration
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript", "json", "c", "cpp", "cuda", "dockerfile", "latex", "lua", "php", "python", "vue", "yaml"},    -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled
  },
}

require'treesitter-context.config'.setup{
    enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
}

-- Requires set termguicolors
require'colorizer'.setup() -- Colorize configuration
