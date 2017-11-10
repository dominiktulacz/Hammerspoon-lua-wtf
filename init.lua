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


appArray = {
  {"1", "Google Chrome"},
  {"2", "IntelliJ IDEA"},
  {"3", "Terminal"},
  {"4", "Sublime Text"},
  {"7", "KeePassX"},
  {"0", "Slack"},
  {"T", "Todoist"},
  {"F", "Finder"},
  {"E", "Evernote"},
  {"C", "Calendar"},
  {"S", "Spotify"}
}

--TODO use foreach here
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "H", function()
  hs.alert.show("Shortcuts (use it with 'caps lock'):\n1. Google Chrome\n2 .IntelliJ IDEA\n3. Terminal\n4. Sublime Text\n5. \n6. \n7. KeePassX\n8. \n9. \n0. Slack\nT. Todoist\nF. Finder\nE. Evernote\nC. Kalendarz\nS. Spotify")
end)

for i = 1, 11 do
  hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, appArray[i][1], function()
    hs.application.launchOrFocus(appArray[i][2])
  end)
end  
