return {
	"folke/tokyonight.nvim",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("tokyonight-night")
		vim.cmd.hi("Comment gui=none")
		local highlight_groups = {
			"Normal",
			"NonText",
			"LineNr",
			"EndOfBuffer",
			"StatusLine",
			"StatusLineNC",
			"NormalNC",
			"SignColumn",
		}
		for _, group in ipairs(highlight_groups) do
			vim.api.nvim_set_hl(0, group, { bg = "NONE" })
		end
	end,
}
