local class = require('lib.middleclass')

local World = class('World')

function World:initialize()
    self.tiles = {}
end

function World:update(dt)
    for k, v in pairs(self.tiles) do
        v:update(dt)
    end
end

function World:draw()
    for k, v in pairs(self.tiles) do
        v:draw()
    end
end

return World
