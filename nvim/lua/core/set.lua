vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
-- Tranaparaent background
vim.opt.background = "dark"
if vim.fn.has("termguicolors") == 1 then
    vim.opt.termguicolors = true
end


vim.cmd("hi Normal  guibg=NONE ctermbg=NONE")

vim.cmd("hi SignColumn  guibg=NONE ctermbg=NONE")

vim.cmd("hi Normal ctermbg=none")
-- Transperency level 35%
--vim.cmd("hi Normal guibg=#000000")
--vim.opt.cursorline = true
--vim.opt.cursorcolumn = true

--vim.opt.showmode = false

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
--<<<<<<< HEAD
-- Indentation Fix 
vim.opt.breakindent = true
vim.opt.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
vim.opt.linebreak = true
vim.opt.wrap = true
vim.opt.showbreak = "↳ "
vim.opt.breakindentopt = "shift:2"


-- Show Indentation 
vim.opt.list = true
vim.opt.listchars = {
    tab = "▸ ",
    trail = "•",
    extends = "❯",
    precedes = "❮",
    --nbsp = "␣",
 --   eol = "↲",
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99

-- Indetation Fix for Python
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Auto indent the matching block 
vim.opt.smartindent = true

-- Auto indent the matching block
-- indentation indicator 
vim.opt.showmatch = true 

-- Fix indentation in copide codes 
vim.opt.pastetoggle = "<F2>"
vim.opt.clipboard = "unnamedplus"
 -- explain the above lines 
 -- pastetoggle = <F2> : toggle paste mode when F2 is pressed
 -- clipboard = unnamedplus : copy paste between vim and other programs

-- Multi line Commenting  with Control + ? in visually selected text 
vim.api.nvim_set_keymap("v", "<C-/>", ":CommentToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-+>", ":CommentToggle<CR>", { noremap = true, silent = true })
 
opacity = 0.7

-- Apply Background Images from the folder 

vim.cmd("autocmd VimEnter * silent exec '!feh --bg-fill --randomize " .. os.getenv("HOME") .. "/.config/nvim/wallpapers/*'")
