Credits = class()

function Credits:init(x)
    -- you can accept and set parameters here
    self.x = x
end

function Credits:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:Credits", WIDTH/2, HEIGHT/2)
end

function Credits:touched(touch)
    -- Codea does not automatically call this method
end
