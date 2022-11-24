function onMoveCamera(focus)
	if focus == 'boyfriend' then
		noteTweenAlpha('note1', 0, 0.5, 0.3, 'smootherStepOut')
		noteTweenAlpha('note2', 1, 0.5, 0.3, 'smootherStepOut')
		noteTweenAlpha('note3', 2, 0.5, 0.3, 'smootherStepOut')
		noteTweenAlpha('note4', 3, 0.5, 0.3, 'smootherStepOut')

		noteTweenAlpha('note5', 4, 1, 0.3, 'smootherStepOut')
		noteTweenAlpha('note6', 5, 1, 0.3, 'smootherStepOut')
		noteTweenAlpha('note7', 6, 1, 0.3, 'smootherStepOut')
		noteTweenAlpha('note8', 7, 1, 0.3, 'smootherStepOut')
	end
	if focus == 'dad' then
		noteTweenAlpha('note5', 4, 0.5, 0.3, 'smootherStepOut')
		noteTweenAlpha('note6', 5, 0.5, 0.3, 'smootherStepOut')
		noteTweenAlpha('note7', 6, 0.5, 0.3, 'smootherStepOut')
		noteTweenAlpha('note8', 7, 0.5, 0.3, 'smootherStepOut')

		noteTweenAlpha('note1', 0, 1, 0.3, 'smootherStepOut')
		noteTweenAlpha('note2', 1, 1, 0.3, 'smootherStepOut')
		noteTweenAlpha('note3', 2, 1, 0.3, 'smootherStepOut')
		noteTweenAlpha('note4', 3, 1, 0.3, 'smootherStepOut')
	end
end