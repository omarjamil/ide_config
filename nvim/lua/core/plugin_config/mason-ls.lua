require("mason-null-ls").setup({
  ensure_installed = { "black" }
})

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
      null_ls.builtins.formatting.black.with({
          extra_args = {"--line-length", "79"}
      }),
      null_ls.builtins.diagnostics.pylint.with({
          extra_args = {
              "--variable-rgx=[a-z_][a-z0-9_]{0,30}$",
              "--ignored-modules=pydantic",
              "--disable=W1203"
          }
      }),
  },
})
