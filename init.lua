hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "Right", function()
  moveFocusedWindowToRightSide()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "Left", function()
  moveFocusedWindowToLeftSide()
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

function isWindowOnLeftSide(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  y = max.y
  x = max.x
  w = max.w / 2
  h = max.h

  if (x == f.x and y == f.y and w == f.w and h == f.h) then
    return true
  else
    return false
  end
end

function isWindowOnRightSide(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  y = max.y
  x = max.x + max.w / 2
  w = max.w / 2
  h = max.h

  if (x == f.x and y == f.y and w == f.w and h == f.h) then
    return true
  else
    return false
  end
end

function moveFocusedWindowToLeftSide()
  local win = hs.window.focusedWindow()
  if (isWindowOnLeftSide(win)) then
    if (win:screen():toWest() ~= nil) then
      win:moveOneScreenWest()
      moveWindowToRightSide(win)
    end  
  else
    moveWindowToLeftSide(win)
  end
end

function moveWindowToLeftSide(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  
  f.y = max.y
  f.x = max.x
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end

function moveFocusedWindowToRightSide()
  local win = hs.window.focusedWindow()
  if (isWindowOnRightSide(win)) then
    if (win:screen():toEast() ~= nil) then
      win:moveOneScreenEast()
      moveWindowToLeftSide(win)
    end
  else
    moveWindowToRightSide(win)
  end
end

function moveWindowToRightSide(win)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.y = max.y
  f.x = max.x + max.w / 2
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

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

appArrayLength = tablelength(appArray)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "H", function()
  local msg = "Shortcuts [" .. appArrayLength .."] (use it with 'caps lock'):"
  for i = 1, appArrayLength do
    msg = msg .. "\n" .. appArray[i][1] .. ". " .. appArray[i][2]
  end
  hs.alert.show(msg)
end)

for i = 1, appArrayLength do
  hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, appArray[i][1], function()
    hs.application.launchOrFocus(appArray[i][2])
  end)
end  
