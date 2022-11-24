function onCreate()
	setProperty('dad.color', getColorFromHex('000000'));
setProperty('boyfriend.color', getColorFromHex('000000'));
setProperty('camHUD.color', getColorFromHex('000000'));


	makeLuaSprite('black','', 0,0);
	makeGraphic('black',1920,1080,'000000');
	setObjectCamera('black', 'camHUD')
	scaleObject('black',10,10)
	addLuaSprite('black', false)
end

function onUpdate()
if curStep == 242 then
doTweenAlpha('black', 'black', 0, 0.8, 'cubeInOut');
end
if curStep == 256 then
	doTweenAlpha('white', 'white', 0, 0.8, 'linear')
	doTweenColor('dad', 'dad', 'FFFFFF', 0.8, 'linear'); 
	doTweenColor('boyfriend', 'boyfriend', 'FFFFFF', 0.9, 'linear'); 
	doTweenColor('hud', 'camHUD', 'FFFFFF', 0.9, 'linear'); 
	end

end