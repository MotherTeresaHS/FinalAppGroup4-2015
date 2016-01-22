local backButtonThree

WorldThree = class()

local levelsOne
local levelsTwo
local levelsThree
local levelsFour
local levelsFive

function WorldThree:init()
       -- sprite("Dropbox:Yellow Back Rectangle Button")
    backButtonThree = Button("Dropbox:Yellow Back Circle Button", vec2(100, 675))
    
      if (multiplicationWorld > 0) then
        levelsOne = Button("Dropbox:Green Info Button", vec2(175, 100))
    else
        levelsOne = Button("Dropbox:lockIcon", vec2(175, 100))
    end
        
    if (multiplicationWorld > 1) then
        levelsTwo = Button("Dropbox:Green Info Button", vec2(300, 375))
    else
        levelsTwo = Button("Dropbox:lockIcon", vec2(300, 375))
    end
    
    if (multiplicationWorld > 2) then
         levelsThree =  Button("Dropbox:Green Info Button", vec2(510, 600))
    else
         levelsThree =  Button("Dropbox:lockIcon", vec2(510, 600))
    end
    
    if (multiplicationWorld > 3) then
         levelsFour =  Button("Dropbox:Green Info Button", vec2(700, 375))
    else
         levelsFour =  Button("Dropbox:lockIcon", vec2(700, 375))
    end
    
    if (multiplicationWorld > 4) then
         levelsFive =  Button("Dropbox:Green Info Button", vec2(850, 100))
    else
         levelsFive =  Button("Dropbox:lockIcon", vec2(850, 100))
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
    
    levelsOne:draw()
    levelsTwo:draw()
    levelsThree:draw()
    levelsFour:draw()
    levelsFive:draw()
end

function WorldThree:touched(touch)
    backButtonThree:touched(touch)
    
     if(backButtonThree.selected == true) then
        Scene.Change("worldTwo")
    end
end
