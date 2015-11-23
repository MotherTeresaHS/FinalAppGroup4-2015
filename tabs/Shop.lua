Shop = class()

-- variable
local goBackButton

function Shop:init()
    -- you can accept and set parameters here
    goBackButton = Button ("Dropbox:Green Level Menu Button", vec2(WIDTH/2, HEIGHT/2))
   
end

function Shop:draw()
    -- Codea does not automatically call this method
    sprite("Project:shop", WIDTH/2, HEIGHT/2, 1024, 768)
    goBackButton:draw()
    
end

function Shop:touched(touch)
    -- Codea does not automatically call this method
    goBackButton:touched(touch)
    
    if (goBackButton.selected == true) then
        Scene.Change("play")
    end
end
