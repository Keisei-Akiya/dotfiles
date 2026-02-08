-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.default_domain = "WSL:Ubuntu"
config.hide_tab_bar_if_only_one_tab = true
config.use_ime = true
config.color_scheme = "Solarized Osaka"
config.font_size = 14
config.window_close_confirmation = "AlwaysPrompt"
config.enable_scroll_bar = true
config.initial_rows = 36
config.initial_cols = 120
config.default_cursor_style = "BlinkingUnderline"

-- and finally, return the configuration to wezterm
return config
