local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
    automatically_reload_config = true,

    enable_tab_bar = false,
    window_close_confirmation = "NeverPrompt",
    window_decorations = "RESIZE",

    color_scheme = 'Dracula (base16)', --[["Dracula+",]] --[["Darktooth (base16)",]] --[["Catppuccin Mocha",]]
    font = wezterm.font("mononoki", {weight = Bold} ),
    font_size = 14,

    window_background_opacity = 0.45,
    macos_window_background_blur = 25,

    initial_cols = 150,
    initial_rows = 50
}

return config
