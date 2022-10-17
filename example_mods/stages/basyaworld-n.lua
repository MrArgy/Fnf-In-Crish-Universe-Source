function onCreate()

	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Disabled')

	makeLuaSprite('sky','sky',-300, 100)
	scaleObject('sky',1.5,1.5)
	makeLuaSprite('back','back',-300, 100)
	scaleObject('back',1.5,1.5)
	makeAnimatedLuaSprite('stage1','stage-animated1', -300, 100)
	scaleObject('stage1',1.5,1.5)
	makeAnimatedLuaSprite('stage2','stage-animated2', -300, 100)
	scaleObject('stage2',1.5,1.5)
	addAnimationByPrefix('stage1','stage-animated1','anim',15,true)
	addAnimationByPrefix('stage2','stage-animated2','anim',15,true)
	makeLuaSprite('white', '', -300, 100);
	makeGraphic('white',1920,1080,'FFFFFF')
	scaleObject('white',1.5,1.5)


	addLuaSprite('sky',false)
	addLuaSprite('back',false)
	addLuaSprite('stage1',false)
	addLuaSprite('stage2',false)
	addLuaSprite('white',false)
end