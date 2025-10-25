-- [[ Set up keymaps ]] See `:h vim.keymap.set()`, `:h mapping`, `:h keycodes`
vim.keymap.set("n", "<Esc>", "<cmd>noh<cr><Esc>", { noremap = true })

-- Use <Esc> to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Map <C-j>, <C-k>, <C-h>, <C-l> to navigate between windows in any modes
vim.keymap.set({ "t", "i" }, "<C-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set({ "t", "i" }, "<C-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set({ "t", "i" }, "<C-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set({ "t", "i" }, "<C-l>", "<C-\\><C-n><C-w>l")
vim.keymap.set({ "n" }, "<C-h>", "<C-w>h")
vim.keymap.set({ "n" }, "<C-j>", "<C-w>j")
vim.keymap.set({ "n" }, "<C-k>", "<C-w>k")
vim.keymap.set({ "n" }, "<C-l>", "<C-w>l")

vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
vim.keymap.set({ "n" }, "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set({ "n", "v" }, "<C-Space>", function()
	vim.lsp.buf.selection_range(1)
end, { desc = "Increment Selecion" })
vim.keymap.set({ "n", "v" }, "<C-S-Space>", function()
	vim.lsp.buf.selection_range(-1)
end, { desc = "Decrease Selecion" })

vim.keymap.set({ "n" }, "<leader>cf", vim.lsp.buf.format, { desc = "Format Document" })
