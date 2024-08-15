lua << EOF
local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  highlight = {
    enable = true,  -- Kích hoạt tô màu cú pháp
  },
  indent = { 
    enable = true,  -- Kích hoạt thụt lề dựa trên Tree-sitter
  },
  autotag = {
    enable = true,  -- Kích hoạt tự động đóng/mở thẻ HTML/XML
  },
  ensure_installed = {
    "json",
    "yaml",
    "markdown",
    "markdown_inline",
    "graphql",
    "bash",
    "vim",
    "dockerfile",
    "gitignore",
    "query",
    "vimdoc",
    "c",
    "python",
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
})
EOF

