function onCreatePost()

makeLuaSprite('LEFT', 'gradient/LEFT-LIGHT', 0, 0)

     setObjectCamera('LEFT', 'other')
     addLuaSprite('LEFT', true)



makeLuaSprite('DOWN', 'gradient/DOWN-LIGHT', 0, 0)

     setObjectCamera('DOWN', 'other')
     addLuaSprite('DOWN', true)


makeLuaSprite('UP', 'gradient/UP-LIGHT', 0, 0)

     setObjectCamera('UP', 'other')
     addLuaSprite('UP', true)



makeLuaSprite('RIGHT', 'gradient/RIGHT-LIGHT', 0, 0)

     setObjectCamera('RIGHT', 'other')
     addLuaSprite('RIGHT', true)


	      setProperty('LEFT.visible', false)
	      setProperty('DOWN.visible', false)
		  setProperty('UP.visible', false)
	      setProperty('RIGHT.visible', false) 




runTimer('gradient', 0.05, 0)


end




function goodNoteHit(id, direction, noteType, isSustainNote)
	-- Function called when you hit a note (after note hit calculations)
	-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
	-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
	-- noteType: The note type string/tag
	-- isSustainNote: If it's a hold note, can be either true or false
	
	if direction == 0 then
	  setProperty('LEFT.alpha', 0.5)
	  
	  
	      setProperty('LEFT.visible', true)
	      setProperty('DOWN.visible', false)
		  setProperty('UP.visible', false)
	      setProperty('RIGHT.visible', false)  
		  
	elseif direction == 1 then
	  setProperty('DOWN.alpha', 0.5)
		  
		  
	      setProperty('LEFT.visible', false)
	      setProperty('DOWN.visible', true)
		  setProperty('UP.visible', false)
	      setProperty('RIGHT.visible', false) 
	   
	elseif direction == 2 then
	  setProperty('UP.alpha', 0.5)
		  
		  
	      setProperty('LEFT.visible', false)
	      setProperty('DOWN.visible', false)
		  setProperty('UP.visible', true)
	      setProperty('RIGHT.visible', false) 
		  
	elseif direction == 3 then
	  setProperty('RIGHT.alpha', 0.5)
		  
		  
	      setProperty('LEFT.visible', false)
	      setProperty('DOWN.visible', false)
		  setProperty('UP.visible', false)
	      setProperty('RIGHT.visible', true)   
		  
	
	end
	
	
	
	
end



function onTimerCompleted(tag, loops, loopsLeft)

if tag == 'gradient' then

setProperty('LEFT.alpha', getProperty('LEFT.alpha') - 0.05)
setProperty('DOWN.alpha', getProperty('DOWN.alpha') - 0.05)
setProperty('UP.alpha', getProperty('UP.alpha') - 0.05)
setProperty('RIGHT.alpha', getProperty('RIGHT.alpha') - 0.05)

end




end