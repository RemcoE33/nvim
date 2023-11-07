-- Line numbers
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.numberwidth = 2

-- Tabs & indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Line wrapping
vim.opt.wrap = false

-- Seach settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.list = false

-- unodir
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
vim.opt.clipboard:append("unnamedplus")

-- split windows
vim.opt.splitright = true

-- General
vim.opt.iskeyword:append("-")

-- Autoformat on save
vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]])

-- Open telescope when i open nvim inside dir without file
-- if vim.fn.argc() == 0 then
-- 	vim.cmd([[autocmd VimEnter * lua require("telescope.builtin").find_files()]])
-- end

-- local arglist = vim.fn.argv()
-- if arglist[1] == "notes" then
-- 	vim.cmd([[autocmd VimEnter * lua ":VimwikiIndex"]])
-- end

-- set linewrap true when editing .md files.
local group = vim.api.nvim_create_augroup("Markdown Wrap Settings", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.md", "*.txt" },
	group = group,
	command = "setlocal wrap",
})

vim.g.vimwiki_list = {
	{
		path = "/Users/remcoedelenbos/notes/",
		syntax = "markdown",
		ext = ".md",
		nested_syntaxes = {
			python = "python",
			js = "javascript",
			go = "go",
			json = "json",
			svelte = "svelte",
			bash = "bash",
		},
	},
}

vim.g.vimwiki_markdown_link_ext = 1

