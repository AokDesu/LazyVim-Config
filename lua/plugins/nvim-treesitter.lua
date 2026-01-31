return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Only add things NOT covered by LazyVim Extras
      vim.list_extend(opts.ensure_installed, {
        "http",
      })

      -- Keep your specific fix for Dart indentation
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
