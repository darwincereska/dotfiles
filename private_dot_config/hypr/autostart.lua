--- IMPORTANT: DO NOT TOUCH UNLESS YOU KNOW WHAT YOU ARE DOING ---
local config = require("config")

--- RUN COMMANDS ---
hl.on("hyprland.start", function()
    for _, cmd in ipairs(config.autostart) do
        hl.exec_cmd(cmd)
    end
end)
