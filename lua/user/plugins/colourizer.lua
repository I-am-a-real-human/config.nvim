return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	opts = { -- set to setup table
		filetypes = {
			"css",
			"javascript",
			html = { mode = "foreground" },
		},
	},
}
