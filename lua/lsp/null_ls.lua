local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.blade_formatter,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.markdownlint,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,

        -- null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.diagnostics.cpplint,
        null_ls.builtins.completion.luasnip,
    },
})
