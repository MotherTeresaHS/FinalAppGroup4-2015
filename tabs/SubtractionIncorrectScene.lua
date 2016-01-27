SubtractionIncorrectScene = class()
local startTimeEight

function SubtractionIncorrectScene:init()
    startTimeEight = ElapsedTime
end

function SubtractionIncorrectScene:draw()
    background(255, 6, 0, 255)
    print(ElapsedTime)
    print("End time is" .. startTimeEight + 0.5)
    if(startTimeEight + 0.5 < ElapsedTime) then
        Scene.Change("levelsTwo")
        print("The end time is" .. ElapsedTime)
  end
end

function SubtractionIncorrectScene:touched(touch)
end
