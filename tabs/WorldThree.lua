local backButtonThree

WorldThree = class()

local multiplicationLevelsOne
local multiplicationLevelsTwo
local multiplicationLevelsThree
local multiplicationLevelsFour
local multiplicationLevelsFive

function WorldThree:init()
     -- sprite("Dropbox:Yellow Back Rectangle Button")
    backButtonThree = Button("Dropbox:Yellow Back Circle Button", vec2(100, 675))
    
      if (multiplicationWorld > 0) then
        multiplicationLevelsOne = Button("Dropbox:levelButton1", vec2(175, 100))
    else
        multiplicationLevelsOne = Button("Dropbox:lockIcon", vec2(175, 100))
    end
        
    if (multiplicationWorld > 1) then
        multiplicationLevelsTwo = Button("Dropbox:levelButton2", vec2(300, 375))
    else
        multiplicationLevelsTwo = Button("Dropbox:lockIcon", vec2(300, 375))
    end
    
    if (multiplicationWorld > 2) then
        multiplicationLevelsThree =  Button("Dropbox:levelButton3", vec2(510, 600))
    else
        multiplicationLevelsThree =  Button("Dropbox:lockIcon", vec2(510, 600))
    end
    
    if (multiplicationWorld > 3) then
        multiplicationLevelsFour =  Button("Dropbox:levelButton4", vec2(700, 375))
    else
        multiplicationLevelsFour =  Button("Dropbox:lockIcon", vec2(700, 375))
    end
    
    if (multiplicationWorld > 4) then
        multiplicationLevelsFive =  Button("Dropbox:levelButton5", vec2(850, 100))
    else
        multiplicationLevelsFive =  Button("Dropbox:lockIcon", vec2(850, 100))
    end
end

function WorldThree:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:MultiplicationMountain", 512, 384, 1024, 768)
    fill(0, 0, 0, 255)
    fontSize(40)
    font("AmericanTypewriter-Bold")
    text("Multiplication Mountain", WIDTH/2, HEIGHT/2+300)
    
    backButtonThree:draw()
    multiplicationLevelsOne:draw()
    multiplicationLevelsTwo:draw()
    multiplicationLevelsThree:draw()
    multiplicationLevelsFour:draw()
    multiplicationLevelsFive:draw()
end

function WorldThree:touched(touch)
    
    backButtonThree:touched(touch)
    multiplicationLevelsOne:touched(touch)
    multiplicationLevelsTwo:touched(touch)
    multiplicationLevelsThree:touched(touch)
    multiplicationLevelsFour:touched(touch)
    multiplicationLevelsFive:touched(touch)
    
     if(backButtonThree.selected == true) then
        Scene.Change("worldTwo")
    end
    
    if(multiplicationLevelsOne.selected == true) then
        if (multiplicationWorld > 0) then
            currentWorld = multiplication
            currentLevel = 1
            Scene.Change("levelsThree")
        else
            alert("Level is locked.")
        end
     end
    
    if(multiplicationLevelsTwo.selected == true) then
        if (multiplicationWorld > 1) then
            currentWorld = multiplication
            currentLevel = 2
            Scene.Change("levelsThree")
        else
            alert("Level is locked.")
        end
    end
    
    if(multiplicationLevelsThree.selected == true) then
        if (multiplicationWorld > 2) then
            currentWorld = multiplication
            currentLevel = 3
            Scene.Change("levelsThree")
        else
            alert("Level is locked.")
        end
    end
    
    if(multiplicationLevelsFour.selected == true) then
        if (multiplicationWorld > 3) then
            currentWorld = multiplication
            currentLevel = 4
            Scene.Change("levelsThree")
        else
            alert("Level is locked.")
        end
    end
    
    if(multiplicationLevelsFive.selected == true) then
        if (multiplicationWorld > 4) then
            currentWorld = multiplication
            currentLevel = 5
            Scene.Change("levelsThree")
        else
            alert("Level is locked.")
        end
    end    
end
