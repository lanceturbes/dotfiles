-- ========== SETTINGS

local set = vim.opt
local cmd = vim.api.nvim_command

set.autoindent = true
set.backup = false
set.colorcolumn = { 80 } -- ruler at column 80
set.errorbells = false -- turn off error ring
set.expandtab = true
set.hidden = true -- keep things open in bg
set.hlsearch = false -- remove highlight after done searching
set.incsearch = true -- highlight as you search
set.mouse = 'a' -- mouse support in all modes
set.nu = true -- line numbers
set.scrolloff = 8 -- start scrolling when you are 8 away from bottom
set.shiftwidth = 2
set.shortmess = set.shortmess + 'c'
set.signcolumn = 'number'
set.smartindent = true -- detect indentation
set.softtabstop = 2
set.splitbelow = true
set.splitright = true -- change default split locations
set.swapfile = false    
set.tabstop = 2 
set.undodir = '~/.config/nvim/undodir'
set.undofile = true
set.updatetime = 100 -- autocomplete refresh rate
set.wrap = false -- disable line wrapping
set.writebackup = false
set.showmode = false

-- ========== PLUGINS

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'alvan/vim-closetag'
Plug 'ap/vim-css-color'
Plug 'caenrique/nvim-toggle-terminal'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'kdheepak/lazygit.nvim'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mhinz/vim-signify'
Plug 'morhetz/gruvbox'
Plug 'olimorris/onedarkpro.nvim'
Plug 'pangloss/vim-javascript'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rhubarb'
Plug('neoclide/coc.nvim', { branch = 'release' })

vim.call('plug#end')

-- ========== THEME

cmd('colorscheme onedarkpro')

-- ========== PLUGIN SETTINGS

-- NERDTree Options

vim.g['NERDTreeChDirMode'] = 2

-- CoC Extensions
vim.g['coc_global_extensions'] = {
  'coc-emmet',
  'coc-eslint',
  'coc-json',
  'coc-prettier',
  'coc-tsserver',
}

-- VIM Closetag Options

vim.g['closetag_filenames'] = '*html,*.xhtml,*.phtml'
vim.g['closetag_xhtml_filenames'] = '*.xhtml,*.jsx'

-- LightLine Options

vim.g['lightline'] = {
  colorscheme = 'one',
  background = 'dark'
}

-- ========== KEYBINDS

--              MODE  KEY-COMBO                   COMMAND                               RECURSIVE
vim.keymap.set( 'n',  '<C-n>',                    ':NERDTreeToggle<Enter>',             { noremap = true })
vim.keymap.set( 'n',  '<C-p>',                    ':FZF<Enter>',                        { noremap = true })
vim.keymap.set( 'n',  '<C-z>',                    ':ToggleTerminal<Enter>',             { noremap = true })
vim.keymap.set( 't',  '<C-z>',                    '<C-\\><C-n>:ToggleTerminal<Enter>',  { noremap = true })
vim.keymap.set( 'i',  '<silent><expr> <c-space>', vim.call('coc#refresh'),              { noremap = true })
vim.keymap.set( 'n',  '<leader>gg',               ':LazyGit<Enter>')

-- disabled arrow keys

vim.keymap.set('n', '<up>', '<nop>', { noremap = true })
vim.keymap.set('n', '<down>', '<nop>', { noremap = true })
vim.keymap.set('n', '<left>', '<nop>', { noremap = true })
vim.keymap.set('n', '<right>', '<nop>', { noremap = true })

-- ========== AUTO COMMANDS



