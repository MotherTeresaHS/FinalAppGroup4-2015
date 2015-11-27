MainScene = class()
local startButton
local creditButton
local optionsButton
local storeButton
function MainScene:init()
 --sprite("Dropbox:Green Forward Circle Button")
    startButton = Button("Dropbox:Red Forward Circle Button", vec2(500,500))
    creditButton = Button("Dropbox:Purple Forward Circle Button", vec2(500,375))
    optionsButton = Button("Dropbox:Yellow Settings Button", vec2(940,70))
    storeButton = Button("Dropbox:Green Forward Circle Button", vec2(500,250))

end

function MainScene:draw()
    background(153, 56, 46, 255)
    startButton:draw()
    creditButton:draw()
    optionsButton:draw()
    storeButton:draw()
--sprite("Dropbox:Yellow Settings Button")
    
end

function MainScene:touched(touch)
    startButton:touched(touch)
    
    
    if(startButton.selected == true) then
        Scene.Change("mainGame")
    end
    
    creditButton:touched(touch)
        
    if(creditButton.selected == true) then
            Scene.Change("credits")
        end
        
        optionsButton:touched(touch)
        
        if(optionsButton.selected == true) then
            Scene.Change("options")
        end
    
    storeButton:touched(touch)
    
    if(storeButton.selected == true) then
        Scene.Change("options")
    end
    
end


