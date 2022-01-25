function onCreate()
	--background boi
	makeLuaSprite( 'back1', 'sky', 0, 0)
	setLuaSpriteScrollFactor('back1', 0.6, 0.6)
	addLuaSprite('back1', false)

	makeLuaSprite( 'back2', 'clubfarbg', 0, 0)
	setLuaSpriteScrollFactor('back2', 0.6, 0.6)
	addLuaSprite('back2', false)

	makeLuaSprite('stage', 'clubroom1', 0, 0)
	setLuaSpriteScrollFactor('stage', 0.6, 0.6)
	addLuaSprite('stage', false)

	makeLuaSprite( 'stage2', 'clubroom2', 0, 0)
	setLuaSpriteScrollFactor('stage2', 0.6, 0.6)
	addLuaSprite('stage2', false)

	makeLuaSprite( 'stage3', 'clubroom3', 0, 0)
	setLuaSpriteScrollFactor('stage3', 0.6, 0.6)
	addLuaSprite('stage3', false)

	makeLuaSprite( 'stage4', 'monikaclubroom', 0, 0)
	setLuaSpriteScrollFactor('stage4', 0.6, 0.6)
	addLuaSprite('stage4', false)


	setProperty('back1.visible', false)
	setProperty('stage2.visible', false)
	setProperty('stage3.visible', false)
	setProperty('stage4.visible', false)


end

function onEvent(name,value1,value2)
	if name == 'Change Main BG' then

		if value1 == '2' then
			setProperty('back1.visible', false);
			setProperty('back2.visible', true);
			setProperty('stage.visible', false);
			setProperty('stage2.visible', true);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false);

		end

		if value1 == '3' then
			setProperty('back1.visible', false);
			setProperty('back2.visible', true);
			setProperty('stage3.visible', true);
			setProperty('stage.visible', false);
			setProperty('stage2.visible', false);
			setProperty('stage4.visible', false);

		end

		if value1 == '4' then
			setProperty('back1.visible', true);
			setProperty('back2.visible', false);
			setProperty('stage2.visible', false);
			setProperty('stage.visible', false);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', true)

		end

		if value1 == '1' then
			setProperty('back1.visible', false);
			setProperty('back2.visible', true);
			setProperty('stage2.visible', false);
			setProperty('stage.visible', true);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false);

		end
	end
	if name == 'Change Back BG' then

		if value1 == '1' then
			setProperty('back1.visible', false);
			setProperty('back2.visible', true);

		end

		if value1 == '2' then
			setProperty('back1.visible', true);
			setProperty('back2.visible', false);


		end

	end
end
