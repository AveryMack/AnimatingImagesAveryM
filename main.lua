-----------------------------------------------------------------------------------------
-- Title: Animating Images
-- Name: Avery Mack
-- Course: ICS2O/3C
-- This program displays 3 images moving in different directions, 
-- with some colour text and a background 
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- background image with width and height
local backgroundImage = display.newImageRect("Images/beach.png", 2048, 1536)

-- character image with width and height
local beachball1 = display.newImageRect("Images/beachball1.png", 600, 600)

-- global variables
scrollSpeed = 3

-- set the image to be transparent
beachball1.alpha = 0

-- set the initial x and y position of beachball1
beachball1.x = 0
beachball1.y = display.contentHeight/3

-- set the rotation speed variable
local rotationSpeed = 3

-- Function: MoveBall
-- Input: this function accepts an event listener
-- Output: none 
-- Description: This function adds the scroll speed to the x-value of the ball
local function MoveBall1(event)
	-- add the scroll speed to the x-value of the ball
	beachball1.x = beachball1.x + scrollSpeed
	-- change the transparency of the ball everytime it moves so that it fades out 
	beachball1.alpha = beachball1.alpha + 0.01

    -- make the beach ball rotate
	beachball1.rotation = beachball1.rotation + rotationSpeed

	-- make the heart grow 
	beachball1.width = beachball1.width - scrollSpeed
	beachball1.height = beachball1.height - scrollSpeed
end 

-- MoveBall will be called over and over again
Runtime:addEventListener("enterFrame", MoveBall1)








-- character image with width and height
local beachball2 = display.newImageRect("Images/beachball2.png", 100, 50)

-- character image with width and height
local beachball3 = display.newImageRect("Images/beachball3.png", 100, 50)




