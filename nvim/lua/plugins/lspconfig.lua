local M = {}

function M.setup()
	-- general settings
	local lspconfig = require('lspconfig')
	local util = require('lspconfig/util')

	local on_attach = function(client, bufnr)

	end

	local capabilities = vim.lsp.protocol.make_client_capabilities()

	lspconfig.gopls.setup {
		on_attach = on_attach,
		capabilities = capabilities,
		cmd = {"gopls"},
		filetypes = { "go", "gomod", "gowork", "gotmpl" },
		root_dir = util.root_pattern("go.work", "go.mod", ".git"),
		settings = {
			gopls = {
				completeUnimported = true,
				usePlaceholders = true,
				analyses = {
				 unusedparams = true,
				},
			},
		},
	}

	-- gofmt
	vim.api.nvim_create_autocmd("BufWritePre", {
	  pattern = { "*.go" },
	  callback = function()
		vim.lsp.buf.format({ timeout_ms = 3000 })
	  end,
	})

	-- goimport
	vim.api.nvim_create_autocmd("BufWritePre", {
	  pattern = { "*.go" },
	  callback = function()
		local params = vim.lsp.util.make_range_params()
		params.context = { only = { "source.organizeImports" } }

		local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
		for _, res in pairs(result or {}) do
		  for _, r in pairs(res.result or {}) do
			if r.edit then
			  vim.lsp.util.apply_workspace_edit(r.edit, vim.lsp.util._get_offset_encoding())
			else
			  vim.lsp.buf.execute_command(r.command)
			end
		  end
		end
	  end,
	})
end

return M
