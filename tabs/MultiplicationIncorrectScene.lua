MultiplicationIncorrectScene = class()
local startTimeNine

function MultiplicationIncorrectScene:init(x)
    startTimeNine = ElapsedTime
end

function MultiplicationIncorrectScene:draw()
    background(255, 6, 0, 255)
    print(ElapsedTime)
    print("End time is" .. startTimeNine + 0.5)
    if(startTimeNine + 0.5 < ElapsedTime) then
        Scene.Change("levelsThree")
        print("The end time is" .. ElapsedTime)
  end
end

function MultiplicationIncorrectScene:touched(touch)
end
