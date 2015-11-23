SplashScreenScene = class()

-- global to this file
local moveForwardButton

function SplashScreenScene:init()
    moveForwardButton = Button("Dropbox:Purple Info Button", vec2(WIDTH/2, HEIGHT/2))

end

function SplashScreenScene:draw()
    -- Codea does not automatically call this method
    background(255, 147, 0, 255)
    sprite("Dropbox:CompanyLogo", WIDTH/2, HEIGHT/2, 1024, 768)
    moveForwardButton:draw()
end

function SplashScreenScene:touched(touch)
    -- Codea does not automatically call this method
    moveForwardButton:touched(touch)
    
    if(moveForwardButton.selected == true) then
        Scene.Change("play")
    end
end