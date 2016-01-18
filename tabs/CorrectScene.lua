CorrectScene = class()
    local startTimeThree
    

function CorrectScene:init()
    startTimeThree = ElapsedTime
end

function CorrectScene:draw()
    background(30, 255, 0, 255)
    
    print(ElapsedTime)
    print("End time is" .. startTimeThree + 0.5)
    if(startTimeThree + 0.5 < ElapsedTime) then
        Scene.Change("levelsOne")
        print("The end time is" .. ElapsedTime)
    end
end

function CorrectScene:touched(touch)

end
