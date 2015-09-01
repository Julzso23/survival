local class = require('lib.middleclass')

local Transformable = require('modules.Transformable')

local Tile = class('Tile', Transformable)

function Tile:initialize(gridSize)
    Transformable.initialize(self)
    self.size = gridSize
end

function Tile:update(dt)
end

function Tile:draw()
end

return Tile
