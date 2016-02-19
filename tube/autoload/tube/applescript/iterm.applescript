-- iterm.applescript
---
-- this script requires an argument that represent the command to execute

on run argv

    set command to (item 1 of argv)

    tell application iTerm2
      tell current session of first window
        write text command
      end tell
    end tell
end run
