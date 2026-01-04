return {
	"danymat/neogen",
	version = "*",
	config = true,
	opts = {
		enabled = true,
		languages = {
			python = {
				annotation_convention = {
					"numpydoc",
				},
			},
		},
	},
}
