local theFunny = 0
local noteSize = 0
local speed = 1

function onStepHit()
if curStep == 271 then
function onUpdate()
	theFunny = theFunny + 0.2
	speed = 1.5
	setProperty('camHUD.y', getProperty('camHUD.x') + math.cos(theFunny) * 5)

	for i = 0,7 do
		setPropertyFromGroup('strumLineNotes', i, 'scale.x', lerp(noteSize, getPropertyFromGroup('strumLineNotes', i, 'scale.x'), 0.6))
		setPropertyFromGroup('strumLineNotes', i, 'scale.y', lerp(noteSize, getPropertyFromGroup('strumLineNotes', i, 'scale.y'), 0.6))
end
end
end
end