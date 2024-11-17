-- MIT License
-- 
-- Copyright (c) 2024 n3v1010
-- 
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
-- 
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
-- 
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentations
opt.tabstop = 4                     -- number of spaces for a tab
opt.shiftwidth = 4                  -- number of spaces to use for autoindent
opt.expandtab = true                -- expand tab to spaces
opt.autoindent = true               -- copy indent from current line when starting a new line

opt.wrap = false

-- search settings
opt.ignorecase = true               -- ignore case when searching
opt.smartcase = true                -- if you include mixed case in your search, assumes case-sensitive

opt.cursorline = true               -- highlight the line the cursor is on

-- Color Theme
-- Turn on termguicolors for tokyonight colorscheme to work
-- (iTerm2 or any other true color terminal is required)
opt.termguicolors = true
opt.background = "dark"             -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes"              -- show signcolumns to prevent text from beign shifted

-- backspace
-- allow backspacing on indent, end of line or insert mode start pos
opt.backspace = { "indent", "eol", "start" } -- FIXME: opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default reg

-- split windows
opt.splitright = true               -- vertical splits will be to the right
opt.splitbelow = true               -- horizontal splits will be below