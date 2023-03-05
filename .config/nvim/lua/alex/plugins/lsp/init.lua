local lspconfig_status, lspconfig = pcall(require, "lspconfig")

if not lspconfig_status then
	return
end

-- load the lsp plugins
require("alex.plugins.lsp.mason")
require("alex.plugins.lsp.handlers").setup()
