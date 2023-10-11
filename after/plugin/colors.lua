vim.cmd([[hi CursorLine guibg=#403658]])
vim.cmd([[hi ColorColumn guibg=#26203f]])

local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
	print("colorscheme onedark not found!")
	return
end

require("onedark").setup({
	style = "darker",
	transparent = true,
	-- toggle theme style ---
	toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
	toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
})
require("onedark").load()
