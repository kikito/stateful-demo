local Game = require 'game'
local MainMenu = require 'gamestates.main_menu'

local OptionsMenu = Game:addState('OptionsMenu', MainMenu)

function OptionsMenu:enteredState()
  self:log('Entering OptionsMenu')

  self.menu = Menu:new({
    { 'Keyboard', function() self:pushState('NotImplemented') end },
    { 'Sound', function() self:pushState('NotImplemented') end },
    { 'Back', function() self:gotoState('MainMenu') end },
  })
end

function OptionsMenu:exitedState()
  self.menu = nil
  self:log('Exiting OptionsMenu')
end

function OptionsMenu:keypressed(key, code)
  if key == 'escape' then
    self:gotoState('MainMenu')
  end
end

return OptionsMenu
