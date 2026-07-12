--- IMPORTANT: DO NOT TOUCH UNLESS YOU KNOW WHAT YOU ARE DOING ---
local config = require("config")
require("autostart")
require("xwayland")
require("keybinds.main")

hl.config({
  general = {
    border_size          = config.appearance.border_size,
    gaps_in              = config.appearance.gaps_in,
    gaps_out             = config.appearance.gaps_out,  
    layout               = "dwindle",
    resize_on_border     = true,
    hover_icon_on_border = true,
    snap = {
      enabled = true,
    },
  },

  decoration = {
    rounding       = config.appearance.rounding,
    rounding_power = 2.0,
    blur = {
      enabled = true,
      size    = 8,
      passes  = 1,
    },
  },

  input = {
    sensitivity    = config.input.mouse.sensitivity,
    accel_profile  = config.input.mouse.accel_profile,
    natural_scroll = config.input.mouse.natural_scroll,
    touchpad = {
      disable_while_typing = config.input.touchpad.disable_while_typing,
      natural_scroll       = config.input.touchpad.natural_scroll,
      scroll_factor        = config.input.touchpad.scroll_sensitivity
    }
  },
   
  dwindle = {
    preserve_split = true
  },

  xwayland = {
    force_zero_scaling = true
  },
})

-- SWITCH WORKSPACE GESTURE
hl.gesture({
  fingers   = 3,
  direction = "horizontal",
  action    = "workspace"
})

-- FOR NOCTALIA COLOR TEMPLATES
require("noctalia").apply_theme()

-- NOCTALIA LAYER RULE
hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd)$",
  },
  no_anim      = true,
  ignore_alpha = 0.5,
  blur         = true,
  blur_popups  = true,
})
