MainScene = class()
local backButton
local mainButton

function MainScene:init()
    sprite("Dropbox:Purple Level Menu Button")
    backButton = Button("Dropbox:Red Forward Circle Button", vec2(WIDTH/2, HEIGHT/2+200))
    mainButton = Button("Dropbox:Purple Forward Circle Button", vec2(WIDTH/2, HEIGHT/2-200))

end

function MainScene:draw()
    sprite("Documents:Mainmenutest", WIDTH/2, HEIGHT/2, 1024, 768)
    backButton:draw()
    mainButton:draw()
    
end

function MainScene:touched(touch)
    backButton:touched(touch)
    mainButton:touched(touch)
    
    if(backButton.selected == true) then
        Scene.Change("shop")
        end
    if(mainButton.selected == true) then
        Scene.Change("Main")
    end

 end

