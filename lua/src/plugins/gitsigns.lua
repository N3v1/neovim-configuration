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

return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        on_attach = function(buffnr)
            local gs = require("gitsigns")

            local function map(mode, l, r, desc)
                vim.keymap.set(mode, l, r, { buffer = buffnr, desc, desc})
            end

            -- Navigation Keymaps
            map("n", "]h", gs.next_hunk, "Next Hunk")
            map("n", "[h", gs.prev_hunk, "Previous Hunk")

            -- Actions
            map("n", "<leader>hs", gs.stage_hunk, "Stage Hunk")
            map("n", "<leader>hu", gs.undo_stage_hunk, "Undo Stage Hunk")
            map("n", "<leader>hr", gs.reset_hunk, "Reset Hunk")
            map("v", "<leader>hs", function()
                gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
            end, "Stage Hunk")
            map("v", "<leader>hr", function()
                gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
            end, "Reset Hunk")

            map("n", "<leader>hS", gs.stage_buffer, "Stage Buffer")
            map("n", "<leader>hR", gs.reset_buffer, "Reset Buffer")

            map("n", "<leader>hb", function()
                gs.blame_line({ full = true })
            end, "Blame Line")
            map("n", "<leader>hB", gs.toggle_current_line_blame, "Toggle line blame")

            map("n", "<leader>hd", gs.diffthis, "Diff this")
            map("n", "<leader>hD", function () 
                gs.diffthis("~")
            end, "Diff this ~")

            -- Text objects
            map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsings select hunk")
        end
    },
}