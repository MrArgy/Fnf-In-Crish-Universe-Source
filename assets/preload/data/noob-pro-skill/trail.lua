function onUpdate()
        addHaxeLibrary('FlxTrail', 'flixel.addons.effects')
        runHaxeCode('game.addBehindDad(new FlxTrail(game.dad, null, 4, 24, 0.3, 0.1));')
end