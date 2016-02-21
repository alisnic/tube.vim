on run argv
    set command to (item 1 of argv)

    tell application iTerm2
      set _window to (current window)

      if _window is equal to missing value then
        create window with default profile
      end if

      tell current window
        tell current session
          write text command
        end tell
      end tell
    end tell
end run
