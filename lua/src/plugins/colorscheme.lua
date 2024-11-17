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

--- Color Scheme Addition: "<USER>/<REPO>"
--- Decomment the colorscheme you want to use below
-- "sainnhe/everforest",
-- "sainnhe/gruvbox-material",
-- "sainnhe/sonokai",
-- "sainnhe/edge",
-- "sainnhe/edge-light"
return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        local bg = "#011628"
        local bg_dark = "#011423"
        local bg_highlight = "#143652"
        local bg_search = "#0A64AC"
        local bg_visual = "#275378"
        local fg = "#CBE0F0"
        local fg_dark = "#B4D0E9"
        local fg_gutter = "#627E97"
        local border = "#547998"

        require("tokyonight").setup({
            style = "night",
            transparent = false,
            italic_comments = true,
            italic_keywords = true,
            italic_functions = true,
            italic_variables = true,
            on_colors = function(colors)
                colors.bg = bg
                colors.bg_dark = bg_dark
                colors.bg_float = bg_dark
                colors.bg_highlight = bg_highlight
                colors.bg_popup = bg_dark
                colors.bg_search = bg_search
                colors.bg_sidebar = bg_dark
                colors.bg_statusline = bg_dark
                colors.bg_visual = bg_visual
                colors.border = border
                colors.fg = fg
                colors.fg_dark = fg_dark
                colors.fg_float = fg
                colors.fg_gutter = fg_gutter
                colors.fg_sidebar = fg_dark
            end
        })

        vim.cmd("colorscheme tokyonight")
    end
}