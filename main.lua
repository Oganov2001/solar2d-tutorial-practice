-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local platform = display.newRect( 0, 440, 480, 50 )
local balloon = display.newCircle( 160, 160, 50 )

local physics = require('physics')


physics.start()
physics.addBody( platform, "static")
physics.addBody( balloon, "dynamic", 0.6)


local function bounce()
    balloon:applyLinearImpulse(0, -0.71, balloon.x, balloon.y)
end

balloon:addEventListener("tap", bounce)
