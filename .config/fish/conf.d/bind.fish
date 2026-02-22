# Viモードを有効化
fish_vi_key_bindings

# キーバインド関数を定義
function fish_user_key_bindings
    # jk で Esc
    bind -M insert -m default jk backward-char
    # Ctrl + e で行末まで補完を確定（これも便利）
    bind -M insert \ce accept-autosuggestion
    # Ctrl + p / Ctrl + n で履歴検索（Vimモードでも使い慣れたキーを維持）
    bind -M insert \cp up-or-search
    bind -M insert \cn down-or-search

    # H, L で行頭・行末
    bind -M default H beginning-of-line
    bind -M visual H beginning-of-line
    bind -M default L end-of-line
    bind -M visual L end-of-line
end
