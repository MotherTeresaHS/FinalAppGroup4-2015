-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Main game (World one)

local backButton
local secondWorldButton
local levelsOne
local levelsTwo
local levelsThree
local levelsFour
local levelsFive

MainGame = class()

function MainGame:init()
    sprite("Dropbox:Blue Redo Button")
    
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(65,710))
    secondWorldButton = Button("Dropbox:Green Forward Circle Button", vec2(970, 710))
    
    if (additionWorld > 0) then
        levelsOne = Button("Dropbox:Green Info Button", vec2(100, 80))
    else
        levelsOne = Button("Dropbox:lockIcon", vec2(100, 80))
    end
        
    if (additionWorld > 1) then
        levelsTwo = Button("Dropbox:Green Info Button", vec2(335, 200))
    else
        levelsTwo = Button("Dropbox:lockIcon", vec2(335, 200))
    end
    
    if (additionWorld > 2) then
         levelsThree =  Button("Dropbox:Green Info Button", vec2(525, 385))
    else
         levelsThree =  Button("Dropbox:lockIcon", vec2(525, 385))
    end
    
    if (additionWorld > 3) then
         levelsFour =  Button("Dropbox:Green Info Button", vec2(730,225))
    else
         levelsFour =  Button("Dropbox:lockIcon", vec2(730, 225))
    end
    
    if (additionWorld > 4) then
         levelsFive =  Button("Dropbox:Green Info Button", vec2(815, 60))
    else
         levelsFive =  Button("Dropbox:lockIcon", vec2(815, 60))
    end

end

function MainGame:draw()
    sprite("Dropbox:additionForest", WIDTH/2, HEIGHT/2)
    fill(0, 0, 0, 255)
    fontSize(40)
    font("AmericanTypewriter-Bold")
    
    backButton:draw()
    secondWorldButton:draw()
    levelsOne:draw()
    levelsTwo:draw()
    levelsThree:draw()
    levelsFour:draw()
    levelsFive:draw()
 
end

function MainGame:touched(touch)
    
    backButton:touched(touch)
    secondWorldButton:touched(touch)
    
    levelsOne:touched(touch)
    levelsTwo:touched(touch)
    
    if(backButton.selected == true) then
        Scene.Change("play")
    end
    
    if(secondWorldButton.selected == true) then
        Scene.Change("worldTwo")
    end
    
    if(levelsOne.selected == true) then
        if (additionWorld > 0) then
            currentWorld = addition
            currentLevel = 1
            Scene.Change("levelsOne")
        else
            alert("Level is locked.")
        end
     end
    
    if(levelsTwo.selected == true) then
        if (additionWorld > 1) then
            currentWorld = addition
            currentLevel = 2
            Scene.Change("levelsOne")
        else
            alert("Level is locked.")
        end
    end
end
