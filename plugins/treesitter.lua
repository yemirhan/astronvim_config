return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    -- ensure_installed = { "lua" },
  },
  {
    "nvim-neorg/neorg",
    run = ":Neorg sync-parsers", -- This is the important bit!
    config = function()
      require("neorg").setup {
        -- configuration here
      }
    end,
  }
}
