# Viモードを有効化
fish_vi_key_bindings

# キーバインド関数を定義
function fish_user_key_bindings
    # jk で Esc
    bind -M insert -m default jk backward-char

    # H, L で行頭・行末
    bind -M default H beginning-of-line
    bind -M visual H beginning-of-line
    bind -M default L end-of-line
    bind -M visual L end-of-line
end
