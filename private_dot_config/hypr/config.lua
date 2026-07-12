--- GENERAL SETTINGS ---
local General = {
    -- # of workspaces [1-10] (default: 5)
    workspaces = 5
}
------------------------


--- MODIFIER KEYS ---
local Modifiers = {
    -- Key used for all window related tasks (default: SUPER)
    window_key  = "SUPER",
    -- Key used for running commands (default: ALT)
    command_key = "ALT",
    -- Key used for launching different apps (wouldn't reccomend changing)
    hyper_key   = "SUPER + CTRL + SHIFT + ALT"
}
---------------------

--- DEFINE PROGRAM VARIABLES ---
local Programs = {
    terminal     = "ghostty",
    launcher     = "vicinae toggle",
    file_manager = "nautilus"
}
--------------------------------

--- DEFINE AUTOSTART PROGRAMS ---
local Autostart = {
    "noctalia",
    "hypridle",
    "vicinae server",
    "hyprshell run",
    "kanata --cfg ~/.config/kanata/kanata.kbd", -- Hyper key
}
---------------------------------

--- APPEARANCE SETTINGS ---
local Appearance = {
    border_size = 1,
    gaps_in     = 5,
    gaps_out    = 10,
    rounding    = 15
}
---------------------------

--- INPUT SETTINGS ---
local Input = {
    keyboard = {
        layout  = "us",
        variant = "colemak"
    },

    mouse = {
        sensitivity        = 0.0,
        accel_profile      = "adaptive", -- "adaptive" or "flat"
        natural_scroll     = false,
        scroll_sensitivity = 1.0
    },

    touchpad = {
        disable_while_typing = true,
        natural_scroll       = true,
        scroll_sensitivity   = 1.0
    }
}
----------------------

return {
    programs   = Programs,
    keys       = Modifiers,
    autostart  = Autostart,
    input      = Input,
    appearance = Appearance,
    general    = General
}
