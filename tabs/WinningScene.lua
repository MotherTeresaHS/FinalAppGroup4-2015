WinningScene = class()
local startTimeFive

function WinningScene:init()
    startTimeFive = ElapsedTime
end

function WinningScene:draw()
    background(255, 200, 0, 255)
    fill(0, 0, 0, 255)
    font("AmericanTypewriter")
    fontSize(60)
    text("You Win! Congratulations!", WIDTH/2, HEIGHT/2)
    print(ElapsedTime)
    print("End time is" .. startTimeFive + 3)
    if(startTimeFive +  5 < ElapsedTime) then 
        if(additionWorld == 1) then
        additionWorld = 2
        Scene.Change("worldOne")
        print("The end time is" .. ElapsedTime)
    elseif(additionWorld == 2) then
        additionWorld = 3
        Scene.Change("worldOne")
    elseif(additionWorld == 3) then
        additionWorld = 4
        Scene.Change("worldOne")
    elseif(additionWorld == 4) then
        additionWorld = 5
        Scene.Change("worldOne")
    elseif(additionWorld == 5) then
        subtractionWorld = 1
    end
end
    
    if(startTimeFive + 5 < ElapsedTime) then
        if(subtractionWorld == 1) then
        subtractionWorld = 2
        Scene.Change("worldTwo")
    elseif(subtractionWorld == 2) then
        subtractionWorld = 3
        Scene.Change("worldTwo")
    elseif(subtractionWorld == 3) then
        subtractionWorld = 4
        Scene.Change("worldTwo")
    elseif(subtractionWorld == 4) then
        subtractionWorld = 5
        Scene.Change("worldTwo")
    end
end
end
        
function WinningScene:touched(touch)
end
