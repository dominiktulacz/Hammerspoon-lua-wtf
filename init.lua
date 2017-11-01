hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.y = max.y
  f.x = max.x + max.w / 2
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.y = max.y
  f.x = max.x
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)


--TODO use foreach here
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "H", function()
  hs.alert.show("Shortcuts (use it with 'caps lock'):\n1. Google Chrome\n2 .IntelliJ IDEA\n3. Terminal\n4. Sublime Text\n5. \n6. \n7. KeePassX\n8. \n9. \n0. Slack\nT. Todoist\nF. Finder\nE. Evernote\nC. Kalendarz\nS. Spotify")
end)


hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "1", function()
  hs.application.launchOrFocus("Google Chrome")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "2", function()
  hs.application.launchOrFocus("IntelliJ IDEA")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "3", function()
  hs.application.launchOrFocus("Terminal")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "4", function()
  hs.application.launchOrFocus("Sublime Text")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "5", function()
  hs.alert.show("Empty slot!")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "6", function()
  hs.alert.show("Empty slot!")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "7", function()
  hs.application.launchOrFocus("KeePassX")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "8", function()
  hs.alert.show("Empty slot!")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "9", function()
  hs.alert.show("Empty slot!")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "0", function()
  hs.application.launchOrFocus("Slack")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "T", function()
  hs.application.launchOrFocus("Todoist")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "F", function()
  hs.application.launchOrFocus("Finder")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "E", function()
  hs.application.launchOrFocus("Evernote")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "C", function()
  hs.application.launchOrFocus("Calendar")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "S", function()
  hs.application.launchOrFocus("Spotify")
end)