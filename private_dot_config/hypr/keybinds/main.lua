require("keybinds.window")
require("keybinds.command")
require("keybinds.hyper")
require("keybinds.laptop")
local config = require("config")

hl.config({
  input = {
    kb_layout = config.input.keyboard.layout,
    kb_variant = config.input.keyboard.variant
  }
})
