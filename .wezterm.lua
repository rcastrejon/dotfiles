-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Isotope (dark) (terminal.sexy)"

config.default_prog = { "/opt/homebrew/bin/fish", "-l" }
config.set_environment_variables = {
	SHELL = "/opt/homebrew/bin/fish",
}

config.default_cursor_style = "BlinkingBar"
config.animation_fps = 1
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.font = wezterm.font("JetBrainsMono Nerd Font Propo")
config.font_size = 13

config.use_fancy_tab_bar = false

config.initial_cols = 90
config.initial_rows = 25

local act = wezterm.action

config.keys = {
	-- Rebind OPT-Left, OPT-Right as ALT-b, ALT-f respectively to match Terminal.app behavior
	{
		key = "LeftArrow",
		mods = "OPT",
		action = act.SendKey({
			key = "b",
			mods = "ALT",
		}),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = act.SendKey({ key = "f", mods = "ALT" }),
	},
}

-- and finally, return the configuration to wezterm
return config
