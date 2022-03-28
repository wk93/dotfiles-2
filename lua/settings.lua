vim.opt.relativenumber = true
vim.opt.rnu = true

-- Fix packer autoinstall
vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
