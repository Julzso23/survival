local class = require('lib.middleclass')

local Stat = class('Stat')

function Stat:initialize(min, max, value)
    self.limits = {}
    self.limits.min = min
    self.limits.max = max
    self.value = value or 0
end

function Stat:setValue(value)
    self.value = value
    self:checkLimits()
end

function Stat:getValue()
    return self.value
end

function Stat:add(value)
    self.value + self.value + value
    self:checkLimits()
end

function Stat:checkLimits()
    if self.value > self.limits.max then
        self.value = self.limits.max
    end
    if self.value < self.limits.min then
        self.value = self.limits.min
    end
end

return Stat
