return {
  {
    "stevearc/conform.nvim",
    opts = {
      default_format_opts = {
        timeout_ms = 20000,
      },
      formatters_by_ft = {
        blade = { "prettier" },
        php = { "pint", "php_cs_fixer" },
      },
      formatters = {
        prettier = {
          -- prepend_args = { "--plugin", "@shufo/prettier-plugin-blade" },
        },
        php_cs_fixer = {
          command = "php-cs-fixer",
          env = {
            PHP_CS_FIXER_IGNORE_ENV = "1",
          },
          args = { "fix", "--diff", "--using-cache=no", "-" },
          stdin = false,
        },
      },
    },
  },
  {
    -- Remove phpcs linter.
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        php = {},
      },
    },
  },
}
