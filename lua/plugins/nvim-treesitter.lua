return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Extend the list to avoid overwriting default parsers like 'lua' or 'vim'
      vim.list_extend(opts.ensure_installed, {
        "cpp",
        "tsx",
        "javascript",
        "typescript",
        "prisma",
        "sql",
        "cmake",
        "json5",
        "dockerfile",
        "http",
        "rust",
        "ron",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "dart",
        "kotlin",
        "java",
      })

      -- Force Treesitter to ignore Dart indentation
      opts.indent = opts.indent or {}
      opts.indent.disable = opts.indent.disable or {}
      if type(opts.indent.disable) == "table" then
        table.insert(opts.indent.disable, "dart")
      else
        opts.indent.disable = { "dart" }
      end
    end,
  },
}
