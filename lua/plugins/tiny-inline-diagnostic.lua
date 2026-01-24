return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Load when Neovim is ready
    priority = 1000, -- High priority to ensure it captures diagnostics early
    config = function()
      require("tiny-inline-diagnostic").setup({

        preset = "amongus",
        options = {
          multilines = {
            enabled = true,
          },
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = { diagnostics = { virtual_text = false } },
  },
}
