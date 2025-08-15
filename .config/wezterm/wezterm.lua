local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
    automatically_reload_config = true,

    enable_tab_bar = false,
    window_close_confirmation = "NeverPrompt",
    window_decorations = "RESIZE",

    color_scheme = "Dracula+", --[["Darktooth (base16)",]] --[["Catppuccin Mocha",]]
    font = wezterm.font("mononoki", {weight = Bold} ),
    font_size = 14,

    window_background_opacity = 0.60,
    macos_window_background_blur = 10,

    initial_cols = 100,
    initial_rows = 30
}

return config
