local obs = obslua
local ffi = require("ffi")
local winmm = ffi.load("Winmm")

PROP_AUDIO_FILEPATH = script_path() .. "chicken.wav"

ffi.cdef[[
    bool PlaySound(const char *pszSound, void *hmod, uint32_t fdwSound);
]]

function playsound(filepath)
    winmm.PlaySound(filepath, nil, 0x00020000)
end

function on_event(event) 
  if event == obs.OBS_FRONTEND_EVENT_REPLAY_BUFFER_SAVED 
    then playsound(PROP_AUDIO_FILEPATH) 
  end 
end

function script_load(settings)
  obs.obs_frontend_add_event_callback(on_event)
end