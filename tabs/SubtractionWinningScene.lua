SubtractionWinningScene = class()
local startTimeSix

function SubtractionWinningScene:init(x)
    startTimeSix = ElapsedTime
end

function SubtractionWinningScene:draw()
    background(255, 200, 0, 255)
    fill(0, 0, 0, 255)
    font("AmericanTypewriter")
    fontSize(60)
    text("You Win! Congratulations!", WIDTH/2, HEIGHT/2)
    print(ElapsedTime)
    print("End time is" .. startTimeSix + 3)
    if(startTimeSix +  5 < ElapsedTime) then 
        if(subtractionWorld == 1) then
        subtractionWorld = 2
        Scene.Change("worldTwo")
        print("The end time is" .. ElapsedTime)
    elseif(subtractionWorld == 2) then
        subtractionWorld = 3
        Scene.Change("worldTwo")
    elseif(subtractionWorld == 3) then
        subtractionWorld = 4
        Scene.Change("worldTwo")
    elseif(subtractionWorld == 4) then
        subtractionWorld = 5
        Scene.Change("worldTwo")
    elseif(subtractionWorld == 5) then
        multiplicationWorld = 1
    end
  end
end

function SubtractionWinningScene:touched(touch)
end
