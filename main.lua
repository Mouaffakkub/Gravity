-----------------------------------------------------------------------------------------
-- Created by: Mouaffak Koubeisy
-- Created on: April 19th 2018
-----------------------------------------------------------------------------------------
local physics = require( "physics" )

physics.start()
physics.setGravity( 0, 25 )
physics.setDrawMode( "hybrid" )

local theGround = display.newImage( "./assets/sprites/land.png" )
theGround.x = display.contentCenterX
theGround.y = display.contentHeight
theGround.id = "the ground"
physics.addBody( theGround, "static", { 
    friction = 0.5, 
    bounce = 0.3 
    } )

local land = display.newImage( "./assets/sprites/land.png" )
land.x = display.contentCenterX + 600
land.y = display.contentHeight - 600
land.id = "the ground"
physics.addBody( land, "static", { 
    friction = 0.5, 
    bounce = 0.3 
    } )

local deidara = display.newImage( "./assets/sprites/Deidara.png" )
deidara.x = display.contentCenterX
deidara.y = display.contentCenterY
deidara.id = "the character"
deidara.isFixedRotation = true
physics.addBody( deidara, "dynamic", { 
    density = 3.0, 
    friction = 0.5, 
    bounce = 0.3 
    } )

local dPad = display.newImage( "./assets/sprites/d-pad.png" )
dPad.x = 150
dPad.y = display.contentHeight - 120
dPad.alpha = 0.50
dPad.id = "d-pad"

local upArrow = display.newImage( "./assets/sprites/upArrow.png" )
upArrow.x = 150
upArrow.y = display.contentHeight - 230
upArrow.id = "up arrow"

local downArrow = display.newImage( "./assets/sprites/downArrow.png" )
downArrow.x = 150
downArrow.y = display.contentHeight + 68
downArrow.id = "down arrow"

local leftArrow = display.newImage( "./assets/sprites/leftArrow.png" )
leftArrow.x = 40
leftArrow.y = display.contentHeight - 120
leftArrow.id = "left arrow"

local rightArrow = display.newImage( "./assets/sprites/rightArrow.png" )
rightArrow.x = 260
rightArrow.y = display.contentHeight - 120
rightArrow.id = "right arrow"
 
function upArrow:touch( event )
    if ( event.phase == "ended" ) then
        transition.moveBy( deidara, { 
        	x = 0,
        	y = -50,
        	time = 100
        	} )
        print ( " u " )
    end

    return true
end

function downArrow:touch( event )
    if ( event.phase == "ended" ) then
        transition.moveBy( deidara, { 
        	x = 0,
        	y = 50,
        	time = 100
        	} )
        print ( " d " )
    end

    return true
end

function leftArrow:touch( event )
    if ( event.phase == "ended" ) then
        transition.moveBy( deidara, { 
        	x = -50,
        	y = 0,
        	time = 100
        	} )
        print ( " l " )
    end

    return true
end

function rightArrow:touch( event )
    if ( event.phase == "ended" ) then
        transition.moveBy( deidara, { 
        	x = 50,
        	y = 0,
        	time = 100
        	} )
        print ( " r " )
    end

    return true
end

upArrow:addEventListener( "touch", upArrow )
downArrow:addEventListener( "touch", downArrow )
leftArrow:addEventListener( "touch", leftArrow )
rightArrow:addEventListener( "touch", rightArrow )