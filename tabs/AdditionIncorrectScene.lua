AdditionIncorrectScene = class()

local startTimeFour

function AdditionIncorrectScene:init()
    startTimeFour = ElapsedTime
end

function AdditionIncorrectScene:draw()
    background(255, 6, 0, 255)
    print(ElapsedTime)
    print("End time is" .. startTimeFour + 0.5)
    if(startTimeFour + 0.5 < ElapsedTime) then
        Scene.Change("levelsOne")
        print("The end time is" .. ElapsedTime)
  end
end

function AdditionIncorrectScene:touched(touch)
end
