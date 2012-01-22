local Game = require 'game'

local MainMenu = Game:addState('MainMenu')

function MainMenu:enteredState()
  self:log('Entering MainMenu')

  self.menu = Menu:new({
    { 'Start Game', function() self:pushState('NotImplemented') end },
    { 'Options', function() self:gotoState('OptionsMenu') end },
    { 'Exit', function() self:exit() end }
  })
end

function MainMenu:draw()
  self.menu:draw()
end

function MainMenu:exitedState()
  self.menu = nil
  self:log('Exiting MainMenu')
end

function MainMenu:mousepressed(x,y,button)
  self.menu:mousepressed(x,y,button)
end

return MainMenu
