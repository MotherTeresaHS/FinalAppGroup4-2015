local worldThreeButton
local backButtonTwo

WorldTwo = class()

local backButton
local secondWorldButton
local subtractionLevelsOne
local subtractionLevelsTwo
local subtractionLevelsThree
local subtractionLevelsFour
local subtractionLevelsFive


function WorldTwo:init()
     --sprite("Dropbox:lockIcon")
    worldThreeButton = Button("Dropbox:Blue Forward Circle Button", vec2(950, 657))
    backButtonTwo = Button("Dropbox:Blue Back Circle Button", vec2(100,675))
    
    if (subtractionWorld > 0) then
        subtractionLevelsOne = Button("Dropbox:Green Info Button", vec2(100, 375))
    else
        subtractionLevelsOne = Button("Dropbox:lockIcon", vec2(100, 375))
    end
        
    if (subtractionWorld > 1) then
        subtractionLevelsTwo = Button("Dropbox:Green Info Button", vec2(340, 375))
    else
        subtractionLevelsTwo = Button("Dropbox:lockIcon", vec2(340, 375))
    end
    
    if (subtractionWorld > 2) then
         subtractionLevelsThree =  Button("Dropbox:Green Info Button", vec2(580, 385))
    else
         subtractionLevelsThree =  Button("Dropbox:lockIcon", vec2(580, 385))
    end
    
    if (subtractionWorld > 3) then
         subtractionLevelsFour =  Button("Dropbox:Green Info Button", vec2(800,375))
    else
         subtractionLevelsFour =  Button("Dropbox:lockIcon", vec2(800, 375))
    end
    
    if (subtractionWorld > 4) then
         subtractionLevelsFive =  Button("Dropbox:Green Info Button", vec2(925, 260))
    else
         subtractionLevelsFive =  Button("Dropbox:lockIcon", vec2(925, 260))
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
    
    subtractionLevelsOne:draw()
    subtractionLevelsTwo:draw()
    subtractionLevelsThree:draw()
    subtractionLevelsFour:draw()
    subtractionLevelsFive:draw()

end

function WorldTwo:touched(touch)
    worldThreeButton:touched(touch)
    backButtonTwo:touched(touch)
    subtractionLevelsOne:touched(touch)
    subtractionLevelsTwo:touched(touch)
    subtractionLevelsThree:touched(touch)
    subtractionLevelsFour:touched(touch)
    subtractionLevelsFive:touched(touch)
    
    
    if(worldThreeButton.selected == true) then
        Scene.Change("worldThree")
    end
    if(backButtonTwo.selected == true) then
        Scene.Change("mainGame")
    end
    
    if(subtractionLevelsOne.selected == true) then
        if (subtractionWorld > 0) then
            currentWorld = subtraction
            currentLevel = 1
            Scene.Change("levelsTwo")
        else
            alert("Level is locked.")
        end
     end
    
    if(subtractionLevelsTwo.selected == true) then
        if (subtractionWorld > 1) then
            currentWorld = subtraction
            currentLevel = 2
            Scene.Change("levelsTwo")
        else
            alert("Level is locked.")
        end
    end
    
    if(subtractionLevelsThree.selected == true) then
        if (subtractionWorld > 2) then
            currentWorld = subtraction
            currentLevel = 3
            Scene.Change("levelsTwo")
        else
            alert("Level is locked.")
        end
    end
    
    if(subtractionLevelsFour.selected == true) then
        if (subtractionWorld > 3) then
            currentWorld = subtraction
            currentLevel = 4
            Scene.Change("levelsTwo")
        else
            alert("Level is locked.")
        end
    end
    
    if(subtractionLevelsFive.selected == true) then
        if (subtractionWorld > 4) then
            currentWorld = subtraction
            currentLevel = 5
            Scene.Change("levelsTwo")
        else
            alert("Level is locked.")
        end
    end
    
end
