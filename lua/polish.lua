local opts = { noremap = true, silent = true }


vim.opt.wrap = false -- bir qatorda davom etadi
vim.opt.linebreak = true -- so‘z bo‘linmaydi

vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })

-- select all
vim.keymap.set("n", "<C-a>", "ggVG", opts)

-- copy and paste
vim.keymap.set("v", "<C-c>", "y", opts)
vim.keymap.set("n", "<C-c>", "yy", opts)
vim.keymap.set("n", "<C-v>", "p", opts)

-- cut
vim.keymap.set("n", "<C-x>", "dd", opts)
vim.keymap.set("v", "<C-x>", "d", opts)

-- dublicate
vim.keymap.set("v", "<C-d>", "y'>p", opts)

-- drop
vim.keymap.set("n", "<C-d>", "Yp", opts)

-- line to up
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", opts)
vim.keymap.set("v", "<A-Up>", ":m '<-1<CR>gv=gv", opts)

-- line to down
vim.keymap.set("v", "<A-Down>", ":m '>+2<CR>gv=gv", opts)
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", opts)

-- undo
vim.keymap.set("n", "<C-z>", "u", opts)

vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

vim.keymap.set("n", "<C-l>", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)



-- Horizontal scrollni Neovim ichida teskari qilib beradi
vim.keymap.set("n", "<ScrollWheelLeft>", "zl", { noremap = true })
vim.keymap.set("n", "<ScrollWheelRight>", "zh", { noremap = true })

