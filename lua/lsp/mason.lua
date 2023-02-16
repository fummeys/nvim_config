require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls" },
	automatic_installation = true,
})

local mason_null_ls = require("mason-null-ls")


mason_null_ls.setup()
