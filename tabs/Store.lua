-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Store scene 
-- The player can buy things from here.

Store = class()
local backToMainMenuButton
local freezeCard
local heartCard
local buyButton
local buyButton2

function Store:init()
    backToMainMenuButton = Button("Dropbox:Blue Back Circle Button", vec2(60, 708, 100, 100))
    freezeCard = Button("Dropbox:freezePowerUp", vec2(WIDTH/2+200, HEIGHT/2+100))
    heartCard  = Button("Dropbox:extraLifePowerUp", vec2(WIDTH/2-200, HEIGHT/2+100))
    buyButton  = Button ("Dropbox:Green Cancel Button", vec2(WIDTH/2+200 , HEIGHT/2-50))
    buyButton2 = Button ("Dropbox:Red Cancel Button", vec2(WIDTH/2-200 , HEIGHT/2-50))
    
    amountOfCoins = math.floor(amountOfCoins)
end

function Store:draw()
    
       
    sprite("Dropbox:shopBackground", WIDTH/2, HEIGHT/2, 1024, 768)
    heartCard:draw()
    freezeCard:draw()
    buyButton:draw()
    buyButton2:draw()
    backToMainMenuButton:draw()

    fill(255, 255, 255, 255)
    fontSize(50)
    
    text("Cost: 15 Coins", WIDTH/2+200, HEIGHT/2+210)
    text("Cost: 15 Coins", WIDTH/2-200, HEIGHT/2+210)
    text("Coins: "..amountOfCoins , WIDTH/2+300, HEIGHT/2+300)
    text("Points: ".. amountOfPoints , WIDTH/2 - 300, HEIGHT /2 + 300)
    text("buy", WIDTH/2+200, HEIGHT/2-120)
    text("buy", WIDTH/2-200, HEIGHT/2-120)
    
    fontSize(40)
    text("amount you have: "..amountOfFreezeCards, WIDTH/2+200, HEIGHT/2-200)
    text("amount you have: "..amountOfHeartCards, WIDTH/2-200, HEIGHT/2-200)
end

function Store:touched(touch)
    
    buyButton:touched(touch)
    buyButton2:touched(touch)
    backToMainMenuButton:touched(touch)
    
    if(backToMainMenuButton.selected==true)then
        Scene.Change("play")
    end
    if(buyButton.selected == true)then
        if(amountOfCoins >= 15 )then
            amountOfCoins  = amountOfCoins  - 15
            amountOfFreezeCards = amountOfFreezeCards+1
        else
            alert("Not enough coins.", "Can't buy freeze card.")
        end
    elseif(buyButton2.selected==true)then
        if(amountOfCoins  >= 15 )then
            amountOfCoins  = amountOfCoins  - 15
            amountOfHeartCards = amountOfHeartCards+1
            else
            alert("Not enough coins.", "Can't buy heart card.")
        end
    end
end


