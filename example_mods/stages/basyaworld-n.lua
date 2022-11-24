local bgSettings = {
	['Scroll Value'] = 0.13
}

function onCreate()

	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Disabled')

	makeLuaSprite('sky','sky',-300, 100)
	scaleObject('sky',1.5,1.5)
	makeLuaSprite('sun','sun',-300, 100)
	setProperty('sun.alpha', 0.9)
	scaleObject('sun',1.5,1.5)
	makeLuaSprite('back','back',-300, 100)
	scaleObject('back',1.5,1.5)
	makeAnimatedLuaSprite('stage1','stage-animated1', -300, 70)
	scaleObject('stage1',1.5,1.5)
	makeAnimatedLuaSprite('stage2','stage-animated2', -300, 50)
	scaleObject('stage2',1.5,1.5)
	makeLuaSprite('light-shader','light',-300, 100)
	scaleObject('light-shader',2.5,2.5)
	setProperty('light-shader.alpha',0.5)
	addAnimationByPrefix('stage1','stage-animated1','anim',15,true)
	addAnimationByPrefix('stage2','stage-animated2','anim',15,true)

	makeLuaSprite('white', '', -300, 100);
	makeGraphic('white',1920,1080,'FFFFFF')
	scaleObject('white',1.5,1.5)


	addLuaSprite('sky',false)
	addLuaSprite('sun',false)
	addLuaSprite('back',false)
	addLuaSprite('stage1',false)
	addLuaSprite('stage2',false)
	addLuaSprite('light-shader',true)
	addLuaSprite('white',false)
end
function onUpdate(elapsed)
	setProperty('sky.x', getProperty('sky.x') - bgSettings['Scroll Value'])
	setProperty('sky.x', getProperty('sky.x') - bgSettings['Scroll Value'])
	if getProperty('sky.x') <= -1000 then
		setProperty('sky.x', -300)
		setProperty('sky2.x', 500)
	end
end