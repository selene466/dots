return {
  "adibhanna/laravel.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
  },
  cmd = { "Artisan", "Composer" },
  keys = {
    { "<leader>la", ":Artisan<cr>", desc = "Laravel Artisan" },
    { "<leader>lc", ":Composer<cr>", desc = "Composer" },
    { "<leader>lr", ":LaravelRoute<cr>", desc = "Laravel Routes" },
    { "<leader>lm", ":LaravelMake<cr>", desc = "Laravel Make" },
  },
  event = { "VeryLazy" },
  config = function()
    require("laravel").setup({
      notifications = false, -- Enable/disable Laravel.nvim notifications (default: true)
      debug = false, -- Enable/disable debug error notifications (default: false)
      keymaps = true, -- Enable/disable Laravel.nvim keymaps (default: true)
      sail = {
        enabled = false, -- Enable/disable Laravel Sail integration (default: true)
        auto_detect = false, -- Auto-detect Sail usage in project (default: true)
      },
    })
  end,
}
