vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("HighlightYank", { clear = true }),
})

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "*.c", "*.cpp", "*.h", "*.hpp", "*.go" },
	callback = function()
		vim.cmd("!cd %:p:h && make")
	end,
	desc = "Build the project whenever a change occur",
	group = vim.api.nvim_create_augroup("Excution", {}),
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "*.tex",
	callback = function()
		vim.api.nvim_buf_set_keymap(0, "n", "<leader>t", ":w<CR>:VimtexCompile<CR>", { noremap = true, silent = true })
	end,
})
