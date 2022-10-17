function onBeatHit()
    -- triggered 2 times per section
    if curBeat % 1 == 0 then
        setProperty('botplayTxt.angle', -5);
        doTweenAngle('bop', 'botplayTxt', 0,0.2,'cubicOut');
    end
    -- triggered 4 times per section
    if curBeat % 2 == 0 then
        setProperty('botplayTxt.angle', 5);
        doTweenAngle('bop', 'botplayTxt', 0,0.2,'cubicOut');
    end
end