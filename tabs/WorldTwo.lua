local worldThreeButton
local backButtonTwo

WorldTwo = class()


function WorldTwo:init()
    -- sprite("Dropbox:Yellow Back Circle Button")
    worldThreeButton = Button("Dropbox:Blue Forward Circle Button", vec2(950, 657))
    backButtonTwo = Button("Dropbox:Blue Back Circle Button", vec2(100,675))
end

function WorldTwo:draw()
    sprite("Dropbox:subtraction sea", WIDTH/2, HEIGHT/2, 1024, 768)
    fill(0, 0, 0, 255)
    fontSize(40)
    font("AmericanTypewriter-Bold")
    text("Subtraction Sea", WIDTH/2, HEIGHT/2+300)
    
    worldThreeButton:draw()
    backButtonTwo:draw()
end

function WorldTwo:touched(touch)
    worldThreeButton:touched(touch)
    backButtonTwo:touched(touch)
    
    if(worldThreeButton.selected == true) then
        Scene.Change("worldThree")
    end
    if(backButtonTwo.selected == true) then
        Scene.Change("mainGame")
    end
end
