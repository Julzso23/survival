local class = require('lib.middleclass')

local Item = require('modules.Item')

local Wheat = class('Wheat', Item)

function Wheat:initialize(x, y)
    Item.initialize(self, x, y)
end

return Wheat
