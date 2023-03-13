-- servers we want to run
local servers = {
	"lua_ls",
	"clangd",
	"rust_analyzer",
	"tsserver"
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
		on_attach = require("alex.plugins.lsp.handlers").on_attach,
		capabilities = require("alex.plugins.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	-- add our options from settings.server file
	local conf_opts_ok, conf_opts = pcall(require, "alex.plugins.lsp.settings." .. server)
	if conf_opts_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
