# OBS Buffer Replay — Scripts & Additional Files

## Description
Collection of scripts and supporting files for buffer replay workflows in OBS Studio.
Used personally to automate sounds, hotkeys, and replay buffer actions.

## Scripts

### chicken.lua
Purpose: Play a sound when replay buffer saves.

Original Script: https://gist.github.com/snakecase/e816384a071cec31efbb4b9e429c108d#file-beep-on-replay-buffer-save-lua

Credits:
- upgradeQ: https://gist.github.com/upgradeQ/b2412242d76790d7618d6b0996c4562f
- gima: https://gitlab.com/gima/obsnotification

### replay_start.lua
**Purpose:** Automatically starts the replay buffer when OBS launches.

**Known Issue:** The OBS taskbar/tray icon does not update to show that the replay buffer is active. 
Functionally, the buffer is running and saves will work normally.
