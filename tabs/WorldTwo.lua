local worldThreeButton
local backButtonTwo

WorldTwo = class()

--sprite("Dropbox:Yellow Back Circle Button")
function WorldTwo:init()
    -- you can accept and set parameters here
    worldThreeButton = Button("Dropbox:Blue Forward Circle Button", vec2(950, 657))
    backButtonTwo = Button("Dropbox:Blue Back Circle Button", vec2(100,675))
end

function WorldTwo:draw()
    sprite("Dropbox:group 4 1", 512, 384, 1024, 768)
    fill(0, 0, 0, 255)
    fontSize(40)
    font("AmericanTypewriter-Bold")
    text("Subtraction Sea", WIDTH/2, HEIGHT/2+300)
    
    worldThreeButton:draw()
    backButtonTwo:draw()
end

function WorldTwo:touched(touch)
    -- Codea does not automatically call this method
    worldThreeButton:touched(touch)
    backButtonTwo:touched(touch)
    
    if(worldThreeButton.selected == true) then
        Scene.Change("worldThree")
    end
    if(backButtonTwo.selected == true) then
        Scene.Change("mainGame")
    end
end
