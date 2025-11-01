return {
  -- CMP comparator
  { "roobert/tailwindcss-colorizer-cmp.nvim", opts = {} },
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", opts = {} },
    },
    opts = function(_, opts)
      -- Add clangd comparator
      opts.sorting = opts.sorting or {}
      opts.sorting.comparators = opts.sorting.comparators or {}
      table.insert(opts.sorting.comparators, 1, require("clangd_extensions.cmp_scores"))

      -- Tailwind formatter integration
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- preserve LazyVim icons/kinds
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
}
