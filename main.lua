-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Setup
local platform = display.newRect( 0, 440, 480, 50 )
local balloon = display.newCircle( 160, 160, 50 )

-- Initialization
local physics = require('physics')

-- Update
physics.start()
physics.addBody( platform, "static")
physics.addBody( balloon, "dynamic", 0.6)

-- Functions
local function bounce()
    balloon:applyLinearImpulse(0, -0.71, balloon.x, balloon.y)
end
-- Events
balloon:addEventListener("tap", bounce)
