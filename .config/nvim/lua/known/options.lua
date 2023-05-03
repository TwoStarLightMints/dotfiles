vim.o.mouse = ""
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.cmd [[ set shell=fish ]]
vim.cmd [[ colorscheme tokyonight-storm ]]

if vim.g.neovide then
    vim.g.neovide_input_use_logo = false
end
