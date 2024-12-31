return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters.biome = {
        command = "biome",
        args = { "check", "--write", "--unsafe", "--stdin-file-path", "$FILENAME" },
        stdin = true,
      }

      return opts
    end,
  },
  {
    "stevearc/overseer.nvim",
    opts = {},
  },
}
