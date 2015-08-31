local class = require('lib.middleclass')

local Transformable = require('modules.Transformable')

local Tile = class('Tile')

function Tile:initialize()
    Transformable.initialize(self)
end

return Tile
