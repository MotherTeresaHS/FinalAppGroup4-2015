MainScene = class()
local startButton
local creditButton

function MainScene:init()
    --sprite("Dropbox:Red Forward Circle Button")
    startButton = Button("Dropbox:Red Forward Circle Button", vec2(WIDTH/2, HEIGHT/2))

end

function MainScene:draw()
    background(153, 56, 46, 255)
    startButton:draw()
    sprite()
    
end

function MainScene:touched(touch)
    startButton:touched(touch)
    
    if(startButton.selected == true) then
        Scene.Change("mainGame")
        end
 end

