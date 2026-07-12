local config = require("config")

--- SWITCH WORKSPACE ---
for i = 1, config.general.workspaces do
    local key = i % 10
    -- SWITCH TO WORKSPACE
    hl.bind(config.keys.window_key .. " + " .. key, hl.dsp.focus({ workspace = i }))

    -- MOVE WINDOW TO WORKSPACE
    hl.bind(config.keys.window_key .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
------------------------

--- MOVE FOCUS ---
local function focus_bind(direction, keys)
    for _, key in ipairs(keys) do
        hl.bind(config.keys.window_key .. " + " .. key, hl.dsp.focus({ direction = direction }))
    end
end

focus_bind("left" , { "H", "LEFT" })
focus_bind("right", { "L", "RIGHT" })
focus_bind("up"   , { "K", "UP" })
focus_bind("down" , { "J", "DOWN" })
------------------

--- MOVE WINDOW ---
local function move_bind(direction, keys)
    for _, key in ipairs(keys) do
        hl.bind(config.keys.window_key .. " + SHIFT + " .. key, hl.dsp.window.move({ direction = direction, group_aware = true }))
    end
end

move_bind("left" , { "H", "LEFT" })
move_bind("right", { "L", "RIGHT" })
move_bind("up"   , { "K", "UP" })
move_bind("down" , { "J", "DOWN" })
hl.bind(config.keys.window_key .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
-------------------

--- TOGGLES ---
-- TOGGLE FLOATING WINDOW
hl.bind(config.keys.window_key .. " + F", hl.dsp.window.float({ action = "toggle" }))

-- TOGGLE FULLSCREEN
hl.bind(config.keys.window_key .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

-- TOGGLE SPLIT
hl.bind(config.keys.window_key .. " + SLASH", hl.dsp.layout("togglesplit"))
---------------

-- ROTATE SPLIT
hl.bind(config.keys.window_key .. " + SHIFT + SLASH", hl.dsp.layout("rotatesplit"))

--- RESIZING ---
-- MOUSE
hl.bind(config.keys.window_key .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- LEFT
hl.bind(config.keys.window_key .. " + MINUS"        , hl.dsp.window.resize({ x = -30, y = 0, relative = true }), { repeating = true })

-- RIGHT
hl.bind(config.keys.window_key .. " + EQUAL"        , hl.dsp.window.resize({ x = 30, y = 0, relative = true }), { repeating = true })

-- UP
hl.bind(config.keys.window_key .. " + SHIFT + MINUS", hl.dsp.window.resize({ x = 0, y = -30, relative = true }), { repeating = true })

-- DOWN
hl.bind(config.keys.window_key .. " + SHIFT + EQUAL", hl.dsp.window.resize({ x = 0, y = 30, relative = true }), { repeating = true })
----------------
