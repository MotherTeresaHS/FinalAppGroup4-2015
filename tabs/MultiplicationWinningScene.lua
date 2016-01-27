MultiplicationWinningScene = class()
local startTimeSeven

function MultiplicationWinningScene:init(x)
    startTimeSeven = ElapsedTime
end

function MultiplicationWinningScene:draw()
    background(255, 200, 0, 255)
    fill(0, 0, 0, 255)
    font("AmericanTypewriter")
    fontSize(60)
    text("You Win! Congratulations!", WIDTH/2, HEIGHT/2)
    print(ElapsedTime)
    print("End time is" .. startTimeSeven + 3)
    if(startTimeSeven +  5 < ElapsedTime) then 
        if(multiplicationWorld == 1) then
        multiplicationWorld = 2
        Scene.Change("worldThree")
        print("The end time is" .. ElapsedTime)
    elseif(multiplicationWorld == 2) then
        multiplicationWorld = 3
        Scene.Change("worldThree")
    elseif(multiplicationWorld == 3) then
        multiplicationWorld = 4
        Scene.Change("worldThree")
    elseif(multiplicationWorld == 4) then
        multiplicationWorld = 5
        Scene.Change("worldThree")
    end
end
end


function SubtractionWinningScene:touched(touch)
end
