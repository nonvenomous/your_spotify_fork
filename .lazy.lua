return {
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        markdown = {},
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.filetype.add({
        pattern = {
          ["tsconfig%.json"] = "jsonc",
          ["base%.json"] = "jsonc", -- tsconfig base.json
        },
      })
    end,
    opts = {
      servers = {
        -- Disable eslint LSP for this project
        eslint = false,
      },
    },
  },
}
