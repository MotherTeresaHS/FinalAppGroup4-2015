local backButtonThree

WorldThree = class()

function WorldThree:init()
       -- sprite("Dropbox:Yellow Back Rectangle Button")
    backButtonThree = Button("Dropbox:Yellow Back Circle Button", vec2(100, 675))
end

function WorldThree:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:MultiplicationMountain", 512, 384, 1024, 768)
    fill(0, 0, 0, 255)
    fontSize(40)
    font("AmericanTypewriter-Bold")
    text("Multiplication Mountain", WIDTH/2, HEIGHT/2+300)
    
    backButtonThree:draw()
end

function WorldThree:touched(touch)
    backButtonThree:touched(touch)
    
     if(backButtonThree.selected == true) then
        Scene.Change("worldTwo")
    end
end
