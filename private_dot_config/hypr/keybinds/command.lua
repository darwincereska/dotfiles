--- IMPORTANT: DO NOT TOUCH UNLESS YOU KNOW WHAT YOU ARE DOING ---
local config = require("config")

--- LAUNCHER ---
hl.bind(config.keys.command_key .. " + SPACE", hl.dsp.exec_cmd(config.programs.launcher))

--- QUIT WINDOW ---
hl.bind(config.keys.command_key .. " + Q", hl.dsp.window.close())
