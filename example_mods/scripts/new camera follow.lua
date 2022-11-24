local bfCam={170, 110}
local dadCam={290, 190}
local drawDebugShit=false
local intensity=20
local speed=0.8

local camPosX=0
local camPosY=0

local func={
		[0]=function() --[[ LEFT ]]
			doTweenX('camMoveX', 'camGame.target', camPosX-intensity, speed, 'quadOut')
			doTweenY('camMoveY', 'camGame.target', camPosY, speed, 'quadOut')
		end,
		[1]=function() --[[ DOWN ]]
			doTweenX('camMoveX', 'camGame.target', camPosX, speed, 'quadOut')
			doTweenY('camMoveY', 'camGame.target', camPosY+intensity, speed, 'quadOut')
		end,
		[2]=function() --[[ UP ]]
			doTweenX('camMoveX', 'camGame.target', camPosX, speed, 'quadOut')
			doTweenY('camMoveY', 'camGame.target', camPosY-intensity, speed, 'quadOut')
		end,
		[3]=function() --[[ RIGHT ]]
			doTweenX('camMoveX', 'camGame.target', camPosX+intensity, speed, 'quadOut')
			doTweenY('camMoveY', 'camGame.target', camPosY, speed, 'quadOut')
		end,
		['default']=function() --[[ IDLE ]]
			doTweenX('camMoveX', 'camGame.target', camPosX, speed*2, 'quadOut')
			doTweenY('camMoveY', 'camGame.target', camPosY, speed*2, 'quadOut')
		end,
	}

function onCreatePost()
	
	makeLuaSprite('playerPos', 'empty',getProperty('boyfriend.x')+bfCam[1], getProperty('boyfriend.y')+bfCam[2])
		makeGraphic('playerPos', 32, 32, 'FFFFFF')
	addLuaSprite('playerPos', true)
		
	makeLuaSprite('enemyPos', 'empty',getProperty('dad.x')+dadCam[1], getProperty('dad.y')+dadCam[2])
		makeGraphic('enemyPos', 32, 32, 'FFFFFF')
	addLuaSprite('enemyPos', true)
	
	setProperty('playerPos.alpha', 0)
	setProperty('enemyPos.alpha', 0)
	
	if drawDebugShit then
		setProperty('playerPos.alpha', 1)
		setProperty('enemyPos.alpha', 1)
	end
end

function goodNoteHit(id,dir,note,sus)
	if mustHitSection and func[dir] then
		camPosX=getProperty('playerPos.x')
		camPosY=getProperty('playerPos.y')
		setProperty('cameraSpeed', 0)
		func[dir]()
	end
end

function opponentNoteHit(id,dir,note,sus)
	if not mustHitSection and func[dir] then
		camPosX=getProperty('enemyPos.x')
		camPosY=getProperty('enemyPos.y')
		setProperty('cameraSpeed', 0)
		func[dir]()
	end
end

function onBeatHit()
	if curBeat%4==0 then
		if mustHitSection then
			camPosX=getProperty('playerPos.x')
			camPosY=getProperty('playerPos.y')
			setProperty('cameraSpeed', 0)
			func['default']()
		else
			camPosX=getProperty('enemyPos.x')
			camPosY=getProperty('enemyPos.y')
			setProperty('cameraSpeed', 0)
			func['default']()
		end
	end
end