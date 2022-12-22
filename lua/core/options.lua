local opt = vim.opt

opt.rnu = true
opt.nu = true


opt.wrap = false
opt.ignorecase = true
opt.termguicolors = true
opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true
opt.softtabstop = 4
opt.tabstop = 4
opt.shiftwidth = 4

opt.scrolloff = 8


--[[ opt.mouse = a ]]
opt.iskeyword:append("-")


vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups

vim.opt.termguicolors = true
