local icons_status, web_devicons = pcall(require, "nvim-web-devicons")
if not icons_status then
	return
end

web_devicons.setup({
	default = true;
})
