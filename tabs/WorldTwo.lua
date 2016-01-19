local worldThreeButton
local backButtonTwo

WorldTwo = class()

local backButton
local secondWorldButton
local levelsOne
local levelsTwo
local levelsThree
local levelsFour
local levelsFive


function WorldTwo:init()
     --sprite("Dropbox:lockIcon")
    worldThreeButton = Button("Dropbox:Blue Forward Circle Button", vec2(950, 657))
    backButtonTwo = Button("Dropbox:Blue Back Circle Button", vec2(100,675))
    
    if (subtractionWorld > 0) then
        levelsOne = Button("Dropbox:Green Info Button", vec2(100, 375))
    else
        levelsOne = Button("Dropbox:lockIcon", vec2(100, 375))
    end
        
    if (subtractionWorld > 1) then
        levelsTwo = Button("Dropbox:Green Info Button", vec2(340, 375))
    else
        levelsTwo = Button("Dropbox:lockIcon", vec2(340, 375))
    end
    
    if (subtractionWorld > 2) then
         levelsThree =  Button("Dropbox:Green Info Button", vec2(580, 385))
    else
         levelsThree =  Button("Dropbox:lockIcon", vec2(580, 385))
    end
    
    if (subtractionWorld > 3) then
         levelsFour =  Button("Dropbox:Green Info Button", vec2(800,375))
    else
         levelsFour =  Button("Dropbox:lockIcon", vec2(800, 375))
    end
    
    if (subtractionWorld > 4) then
         levelsFive =  Button("Dropbox:Green Info Button", vec2(925, 260))
    else
         levelsFive =  Button("Dropbox:lockIcon", vec2(925, 260))
    end
end

function WorldTwo:draw()
    sprite("Dropbox:subtraction sea", WIDTH/2, HEIGHT/2, 1024, 768)
    fill(0, 0, 0, 255)
    fontSize(40)
    font("AmericanTypewriter-Bold")
    text("Subtraction Sea", WIDTH/2, HEIGHT/2+300)
    
    worldThreeButton:draw()
    backButtonTwo:draw()
    
    levelsOne:draw()
    levelsTwo:draw()
    levelsThree:draw()
    levelsFour:draw()
    levelsFive:draw()
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
