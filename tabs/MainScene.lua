MainScene = class()
local backButton


function MainScene:init()
    sprite("Dropbox:Red Back Circle Button")
    backButton = Button("Dropbox:Red Back Circle Button", vec2(WIDTH/2, HEIGHT/2))

end

function MainScene:draw()
    background(153, 56, 46, 255)
    backButton:draw()
    sprite()
    
end

function MainScene:touched(touch)
    backButton:touched(touch)
    
    if(backButton.selected == true) then
        Scene.Change("splash")
        end
 end

