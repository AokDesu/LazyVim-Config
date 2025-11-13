return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(
        opts.ensure_installed,
        {
          "sqlfluff",
          "js-debug-adapter",
          "clang-format",
          "cmakelang",
          "cmakelint",
          "markdownlint-cli2",
          "markdown-toc",
        }
      )
    end,
  },
}
