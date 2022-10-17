function onCreate()
	setProperty('dad.color', getColorFromHex('000000'));
setProperty('boyfriend.color', getColorFromHex('000000'));
setProperty('camHUD.color', getColorFromHex('000000'));

	--THE TOP BAR
	makeLuaSprite('UpperBar', 'empty', 0, -120)
	makeGraphic('UpperBar', 1280, 120, '000000')
	setObjectCamera('UpperBar', 'hud')
	addLuaSprite('UpperBar', false)


	--THE BOTTOM BAR
	makeLuaSprite('LowerBar', 'empty', 0, 720)
	makeGraphic('LowerBar', 1280, 120, '000000')
	setObjectCamera('LowerBar', 'hud')
	addLuaSprite('LowerBar', false)

end


function onUpdate()

	if curStep == 1 then
	
	doTweenY('Cinematics1', 'UpperBar', 0, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 600, 0.5, 'Linear')


	end
	
if curStep == 256 then
	doTweenY('Cinematics1', 'UpperBar', -120, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 720, 0.5, 'Linear')
	doTweenAlpha('white', 'white', 0, 0.8, 'linear')
	doTweenColor('dad', 'dad', 'FFFFFF', 0.8, 'linear'); 
	doTweenColor('boyfriend', 'boyfriend', 'FFFFFF', 0.9, 'linear'); 
	doTweenColor('hud', 'camHUD', 'FFFFFF', 0.9, 'linear'); 
	end

end