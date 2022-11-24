local theFunny = 0
local noteSize = 0

function onCreatePost()
	noteSize = getPropertyFromGroup('playerStrums', 0, 'scale.x')
end

function lerp(a, b, t)
	return a + (b - a) * t
end

function onUpdate()
	for i = 0,7 do
		setPropertyFromGroup('strumLineNotes', i, 'scale.x', lerp(noteSize, getPropertyFromGroup('strumLineNotes', i, 'scale.x'), 0.6))
		setPropertyFromGroup('strumLineNotes', i, 'scale.y', lerp(noteSize, getPropertyFromGroup('strumLineNotes', i, 'scale.y'), 0.6))
	end
end

function goodNoteHit(id, dir, thewhat, sus)
	setPropertyFromGroup('playerStrums', dir, 'scale.x', noteSize + 0.2)
	setPropertyFromGroup('playerStrums', dir, 'scale.y', noteSize + 0.2)
end

function opponentNoteHit(id, dir, thewhat, sus)
	setPropertyFromGroup('opponentStrums', dir, 'scale.x', noteSize + 0.2)
	setPropertyFromGroup('opponentStrums', dir, 'scale.y', noteSize + 0.2)
end