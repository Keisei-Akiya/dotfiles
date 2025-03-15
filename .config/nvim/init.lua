-- expandtab option. タブ文字をスペースに変換
vim.cmd("set expandtab")

-- tabstop obtion. タブ文字の幅を4スペースに設定
vim.cmd("set tabstop=4")

-- softtabstop option. insert mode でのタブの幅を4スペースに設定
vim.cmd("set softtabstop=4")

-- shiftwidth option. indentに使用するスペースの幅を4スペースに設定
vim.cmd("set shiftwidth=4")

-- jj to esc
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })
