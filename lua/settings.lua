vim.opt.relativenumber = true
vim.opt.rnu = true

-- Fix packer autoinstall
vim.opt.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath

vim.g.markdown_fenced_languages = {
  "ts=typescript"
}
