function onUpdate()
	if curStep == 258 then
	function onBeatHit()
    if curBeat % 1 == 0 then
        setProperty('camHUD.angle', -2);
        doTweenAngle('bop', 'camHUD', 0,0.2,'cubicOut');
    end
    if curBeat % 2 == 0 then
        setProperty('camHUD.angle', 2);
        doTweenAngle('bop', 'camHUD', 0,0.2,'cubicOut');
    end
end
end
end