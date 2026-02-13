-- N-HUB Loader
local CORE_URL = "https://raw.githubusercontent.com/NalahRock/N-HUB/main/core.lua"

local ok, src = pcall(function()
    return game:HttpGet(CORE_URL)
end)

if not ok or type(src) ~= "string" or #src == 0 then
    warn("[N-HUB] Failed to load core.")
    return
end

local fn, err = loadstring(src)
if not fn then
    warn("[N-HUB] Load error:", err)
    return
end

return fn()
