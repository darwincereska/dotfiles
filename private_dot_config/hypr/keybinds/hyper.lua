local config = require("config")

--- LAUNCH FILE BROWSER ---
hl.bind(config.keys.hyper_key .. " + E", hl.dsp.exec_cmd(config.programs.file_manager))

--- LAUNCH TERMINAL ---
hl.bind(config.keys.hyper_key .. " + T", hl.dsp.exec_cmd(config.programs.terminal))
