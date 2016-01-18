AdditionWinningScene = class()
local startTimeFive

function AdditionWinningScene:init()
    startTimeFive = ElapsedTime
end

function AdditionWinningScene:draw()
    background(255, 200, 0, 255)
    fill(0, 0, 0, 255)
    font("AmericanTypewriter")
    fontSize(60)
    text("You Win! Congratulations!", WIDTH/2, HEIGHT/2)
    print(ElapsedTime)
    print("End time is" .. startTimeFive + 3)
    if(startTimeFive +  8 < ElapsedTime) then
        additionWorld = 2
        Scene.Change("worldOne")
        print("The end time is" .. ElapsedTime)
    end
end

function AdditionWinningScene:touched(touch)
    
end
