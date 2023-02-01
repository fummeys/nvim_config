local capabilities = require('cmp_nvim_lsp').default_capabilities()
local config = require('lspconfig.configs')
--[[ adding fold capabilities ]]
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

require('ufo').setup()

local nvim_lsp = require('lspconfig')


local on_attach = function(_, bufnr)
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { buffer = bufnr, noremap = true, silent = true }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
  vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
  vim.keymap.set('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  -- vim.keymap.set('n', '<leader>o', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  -- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
end


vim.cmd [[ autocmd BufRead,BufNewfile *.conf set filetype=nginx ]]

vim.cmd [[ autocmd BufRead,BufNewfile *.blade.php set filetype=blade ]]


-- config.blade =  {
-- 	default_config = {
-- 		cmd  = { "/home/remmy/.lsp/laravel/builds/laravel-dev-tools", "lsp" },
-- 		filetypes = { 'blade' };
-- 		root_dir = function(fname)
-- 			return nvim_lsp.util.find_git_ancestor(fname)
-- 		end;
-- 		settings = {}
-- 	}
-- }


config.nginx = {
	default_config = {
		cmd = { "nginx-language-server" },
		filetypes = { "nginx" },
		root_dir = function(fname)
			return nvim_lsp.util.find_git_ancestor(fname)
		end;
	}
}


nvim_lsp.nginx.setup{
	capabilities = capabilities,
	on_attach = on_attach,
}

-- nvim_lsp.blade.setup{
-- 	capabilities = capabilities,
-- 	on_attach = on_attach,
-- }

-- lua
nvim_lsp.sumneko_lua.setup{
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim', 'require' }
			}
		}
	}
}

nvim_lsp.clangd.setup{
	capabilities = capabilities,
	on_attach = on_attach,
}

-- nvim_lsp.phpactor.setup{
-- 	capabilities = capabilities,
-- 	on_attach = on_attach,
-- }

nvim_lsp.intelephense.setup{
	capabilities = capabilities,
	on_attach = on_attach
}

nvim_lsp.html.setup{
	capabilities = capabilities,
	filetypes = {"html","blade"},
	on_attach = on_attach
}

nvim_lsp.cssls.setup{
	capabilities = capabilities,
	on_attach = on_attach
}

nvim_lsp.cssls.setup{
	capabilities = capabilities,
	on_attach = on_attach
}

nvim_lsp.tsserver.setup{
	capabilities = capabilities,
	on_attach = on_attach
}


nvim_lsp.tailwindcss.setup{
	capabilities = capabilities,
	on_attach = on_attach
}


nvim_lsp.bashls.setup{
	capabilities = capabilities,
	on_attach = on_attach
}

nvim_lsp.dockerls.setup{
	capabilities = capabilities,
	on_attach = on_attach
}


nvim_lsp.marksman.setup{
	capabilities = capabilities,
	on_attach = on_attach
}


nvim_lsp.jsonls.setup{
	capabilities = capabilities,
	on_attach = on_attach
}

nvim_lsp.yamlls.setup{
	capabilities = capabilities,
	on_attach = on_attach
}



