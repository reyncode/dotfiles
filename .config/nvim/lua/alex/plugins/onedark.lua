local onedark_status, onedark = pcall(require, "onedark")

if not onedark_status then
	return
end

-- https://github.com/navarasu/onedark.nvim#default-configuration

onedark.setup({
	style = "dark"
})

onedark.load()
