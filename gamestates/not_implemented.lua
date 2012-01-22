local Game = require 'game'

local NotImplemented = Game:addState('NotImplemented')

function NotImplemented:enteredState()
  self:log('Entering NotImplemented')
end

function NotImplemented:exitedState()
  self:log('Exiting NotImplemented')
end

function NotImplemented:draw()
  love.graphics.print("This state is not implemented. Press ESC to go back", 250, 280)
end

function NotImplemented:keypressed(key, code)
  if key == 'escape' then
    self:popState()
  end
end

return NotImplemented
