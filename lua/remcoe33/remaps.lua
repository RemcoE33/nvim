vim.g.mapleader = " "
local km = vim.keymap

-- general keymaps
km.set("i", "jk", "<ESC>") -- back to normal mode
km.set("n", "<leader>nh", ":nohl<CR>") -- clear highline
km.set("n", "x", '"_x') -- delete without copy to register
km.set("n", "<leader>+", "<C-a>")
km.set("n", "<leader>-", "<C-x>")
km.set("x", "<leader>p", '"_dp') --Paste without copying the overwritten text in register

-- movement
km.set("n", "<C-d>", "<C-d>zz") -- kep cursor centered
km.set("n", "<C-u>", "<C-u>zz") -- kep cursor centered
km.set("v", "J", ":m '>+1<CR>gv=gv") -- move highlighted lines up
km.set("v", "K", ":m '<-2<CR>gv=gv") -- move highlighted lines down
km.set("n", "n", "nzzzv") -- center cursor while go to next search
km.set("n", "N", "Nzzzv") -- center cursor while go to prev seach
km.set("n", "J", "mzJ`z") -- places current line to the one above with space

-- windows
km.set("n", "<leader>sv", "<C-w>v") --split vertically
km.set("n", "<leader>sh", "<C-w>s") --split horizontally
km.set("n", "<leader>sh", "<C-w>=") --make split windows equal size
km.set("n", "<leader>sx", "<:close<CR>") --close current split window

-- tabs
km.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
km.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
km.set("n", "<leader>tn", ":tabn<CR>") -- next tab
km.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- undotree
km.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- nvim-tree
km.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- LSP
km.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })

--git status overview
km.set("n", "<leader>gs", vim.cmd.Git)

-- trouble
km.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
km.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
km.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
km.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
km.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
km.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })

-- telescope
km.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
km.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
km.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
km.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
km.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
km.set("n", "<leader>fo", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })

-- harpoon
km.set("n", "<leader>h", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>') -- open the file naviagtion ui
km.set("n", "<leader>a", '<cmd>lua require("harpoon.mark").add_file()<cr>') -- add file
km.set("n", "<leader>1", '<cmd>lua require("harpoon.ui").nav_file(1)<cr>') -- go to file 1
km.set("n", "<leader>2", '<cmd>lua require("harpoon.ui").nav_file(2)<cr>')
km.set("n", "<leader>3", '<cmd>lua require("harpoon.ui").nav_file(3)<cr>')
km.set("n", "<leader>4", '<cmd>lua require("harpoon.ui").nav_file(4)<cr>')
km.set("n", "<leader>5", '<cmd>lua require("harpoon.ui").nav_file(5)<cr>')

-- MarkdownTable
km.set("n", "<leader>mt", "<cmd>TableModeToggle<cr>")
