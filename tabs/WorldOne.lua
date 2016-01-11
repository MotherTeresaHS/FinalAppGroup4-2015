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
    -- sprite("Dropbox:Green Info Button")  
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(65,710))
    secondWorldButton = Button("Dropbox:Green Forward Circle Button", vec2(970, 710))
    levelsOne = Button("Dropbox:Yellow Info Button", vec2(100, 80))
    levelsTwo =  Button("Dropbox:Green Info Button", vec2(335, 200))
    levelsThree =  Button("Dropbox:Green Info Button", vec2(525, 400))
    levelsFour =  Button("Dropbox:Green Info Button", vec2(735, 250))
    levelsFive =  Button("Dropbox:Green Info Button", vec2(850, 50))

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
    levelsThree:touched(touch)
    levelsFour:touched(touch)
    levelsFive:touched(touch)
    
    if(backButton.selected == true) then
        Scene.Change("play")
    end
    
    if(secondWorldButton.selected == true) then
        Scene.Change("worldTwo")
    end
    
    if(levelsOne.selected == true) then
        currentWorld = addition
        currentLevel = 1
        Scene.Change("levelsOne")
    end
end
