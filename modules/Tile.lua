local class = require('lib.middleclass')

local Transformable = require('modules.Transformable')

local Tile = class('Tile', Transformable)

function Tile:initialize(gridSize, x, y)
    Transformable.initialize(self)
    self.size = gridSize
    self:setPosition(x, y)
end

function Tile:update(dt)
end

function Tile:draw()
end

function Tile:getDrop()
    return nil
end

return Tile
