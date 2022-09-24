function onCreate()
	-- background shit
	makeLuaSprite('ponybg_polka', 'ponybg_polka', -500, -300);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	
	makeLuaSprite('bg', 'bg', -650, -300);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	scaleObject('bg', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setLuaSpriteScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('bg', false);
	addLuaSprite('', false);
	addLuaSprite('', false);
	addLuaSprite('', false);
	addLuaSprite('', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end