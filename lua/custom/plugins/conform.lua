return {
  { -- Autoformat
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = false,
      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        python = { 'isort', 'black' },
        javascript = { { 'prettierd', 'prettier' } },
        typescript = { { 'prettierd', 'prettier' } },
        json = { { 'prettierd', 'prettier' } },
        jsonc = { { 'prettierd', 'prettier' } },
        -- You can use a sub-list to tell conform to run *until* a formatter is found.
        c = { { 'astyle', 'uncrustify' } },
        cpp = { { 'astyle', 'uncrustify' } },
      },
      formatters = {
        black = {
          prepend_args = { '--line-length=125' },
          -- check https://pypi.org/project/black/
        },
        astyle = {
          prepend_args = { '--style=google', '--indent=spaces=2 ', '--max-code-length=120' },
          -- check https://astyle.sourceforge.net/astyle.html#_Brace_Style_Options
        },
      },
    },
  },
  -- automatically download conform formatters with mason
  { 'zapling/mason-conform.nvim', opts = {} },
}
