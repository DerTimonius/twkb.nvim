local M = {}

local function create_floating_win()
	local width = vim.o.columns
	local height = vim.o.lines
	local buf = vim.api.nvim_create_buf(false, true)
	local win = vim.api.nvim_open_win(buf, true, {
		relative = "editor",
		width = width,
		height = height,
		style = "minimal",
		border = "rounded",
		col = 0,
		row = 0,
	})

	return buf, win
end

M.setup = function()
	-- nothing for now
end

M.start_twkb = function()
	local buf, win = create_floating_win()

	vim.fn.termopen("twkb", {
		on_exit = function()
			vim.api.nvim_win_close(win, true)
		end,
	})

	vim.cmd("startinsert")

	vim.api.nvim_buf_set_keymap(buf, "t", "<C-q>", "<C-\\><C-n>:q<CR>", { noremap = true, silent = true })
end

return M
