local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- インサートモードからのエスケープ設定
-- 英数字でのエスケープ
map('i', 'jj', '<Esc>', opts)
map('i', 'jk', '<Esc>', opts)

-- 日本語入力でのエスケープ（複数パターン）
map('i', 'っｊ', '<Esc>', opts)
map('i', 'ｊｋ', '<Esc>', opts)
map('i', 'っj', '<Esc>', opts)  -- 半角jとの組み合わせ
map('i', 'っk', '<Esc>', opts)  -- 代替パターン

-- Ctrl+[ も有効（標準的なエスケープ）
map('i', '<C-[>', '<Esc>', opts)

-- ノーマルモードでのカーソル移動
map('n', 'H', '0', opts)  -- 行の先頭へ移動
map('n', 'L', '$', opts)  -- 行の末尾へ移動

-- vscode