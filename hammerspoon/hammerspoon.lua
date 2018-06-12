-- author: Takatsugu Yoneya

-- -------------------------------------
--     ** window management **
-- -------------------------------------

local mash = {"alt", "cmd"}

hs.hotkey.bind(mash, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(mash, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(mash, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

hs.hotkey.bind(mash, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h - (max.h / 2)
  win:setFrame(f)
end)

hs.hotkey.bind(mash, "M", hs.grid.maximizeWindow)

-- multi monitor
hs.hotkey.bind(mash, "Right", function()
  hs.grid.pushWindowNextScreen()
  hs.grid.maximizeWindow()
end)

hs.hotkey.bind(mash, "Left", function()
  hs.grid.pushWindowPrevScreen()
  hs.grid.maximizeWindow()
end)

-- -------------------------------------
--     ** application management **
-- -------------------------------------

local mash_itunes = {"alt", "I"}

hs.hotkey.bind(mash_itunes, "P", function()
  if hs.itunes.isPlaying()
    then
      hs.itunes.pause()
    else
      hs.itunes.play()
  end
end)

hs.hotkey.bind(mash_itunes, "[", hs.itunes.previous)
hs.hotkey.bind(mash_itunes, "]", hs.itunes.next)
hs.hotkey.bind(mash_itunes, "=", hs.itunes.volumeUp)
hs.hotkey.bind(mash_itunes, "-", hs.itunes.volumeDown)
hs.hotkey.bind(mash_itunes, "O", hs.itunes.displayCurrentTrack)

-- -------------------------------------
--        ** debug management **
-- -------------------------------------



function reloadConfig(files)
  local doReload = false
  for _,file in pairs(files) do
    if file:sub(-4) == ".lua" then
      doReload = true
    end
  end
  if doReload then
    hs.reload()
  end
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()

-- Well, sometimes auto-reload is not working, you know u.u
hs.hotkey.bind(mash, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")
