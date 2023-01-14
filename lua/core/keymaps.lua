vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i","jk","<ESC>") -- exit insert mode

keymap.set("n","<C-s>",":w<CR>")
keymap.set("n","<C-q>",":q<CR>")


keymap.set("i","<C-s>","<ESC>:w<CR>")

keymap.set("n","<leader>sc",":set spell spelllang=en_gb<CR>") --spell check on
keymap.set("n","<leader>so",":set spell nospell<CR>") --spell check on


keymap.set("n","<leader>tt",":terminal<CR>")

-- tabs
keymap.set("n","<leader>tn",":tabnew<CR>")
keymap.set("n","<leader>]",":tabnext<CR>")
keymap.set("n","<leader>[",":tabprevious<CR>")
keymap.set("n","<leader>tc",":tabclose<CR>")


-- move selections
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("x", "<leader>p", "\"_dp")

-- window movement
keymap.set("n","<leader>ww","<C-w>w")

keymap.set("n","<leader><Left>","<C-w>h")
keymap.set("n","<leader>H","<C-w>h")

keymap.set("n","<leader><Up>","<C-w>k")
keymap.set("n","<leader>K","<C-w>k")

keymap.set("n","<leader><Right>","<C-w>l")
keymap.set("n","<leader>L","<C-w>l")

keymap.set("n","<leader><Down>","<C-w>j")
keymap.set("n","<leader>J","<C-w>j")

keymap.set("n","<leader>wx","<C-w>q")


-- file explorer
keymap.set("n","<leader>ef","<cmd>NvimTreeFocus<CR>")
keymap.set("n","<leader>ex","<cmd>NvimTreeClose<CR>")

-- Lazygit
keymap.set("n","<leader>gl",":LazyGit<CR>")

-- LspSaga
keymap.set("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
keymap.set({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
keymap.set("n","<leader>o", "<cmd>Lspsaga outline<CR>",{ silent = true })
keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
keymap.set("n", "<C-k>", "<cmd>Lspsaga show_cusor_diagnostics<CR>", { silent = true })
keymap.set({"n","t"}, "<A-d>", "<cmd>Lspsaga term_toggle<CR>", { silent = true })


-- REST Nvim
keymap.set("n","<leader>rf","<Plug>RestNvim")
keymap.set("n","<leader>rp","<Plug>RestNvimPreview")
keymap.set("n","<leader>rr","<Plug>RestNvimLast")



