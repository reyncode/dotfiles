-- servers we want to run
local servers = {
	"lua_ls",
	"clangd"
}

local settings = {
	ui = {
		icons = {
			package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
		},
	}
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

-- setup the options for each server
local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("alex.plugins.lsp.handlers").on_attach
	}

	lspconfig[server].setup(opts)
end
