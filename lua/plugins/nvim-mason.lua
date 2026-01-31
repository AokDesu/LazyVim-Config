return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        -- Web & Data
        "sqlfluff",
        "css-lsp",
        -- C++ / CMake
        "clang-format",
        "cmakelang", -- Includes format and lint; removed standalone cmakelint
        "neocmakelsp",
        -- Go
        "goimports",
        "gofumpt",
        "gomodifytags",
        "impl",
        "golangci-lint",
        "delve",
        -- Java / Kotlin
        "ktlint",
        "java-debug-adapter",
        "java-test",
        -- Markdown & Debugging
        "js-debug-adapter",
        "markdownlint-cli2",
        "markdown-toc",
      })
    end,
  },
}
