local defaultGameplayCoordinates = {
	JudgeX = 0,
	JudgeY = 40,
	ComboX = 30,
	ComboY = -20,
	ErrorBarX = SCREEN_CENTER_X,
	ErrorBarY = SCREEN_CENTER_Y + 53,
	TargetTrackerX = SCREEN_CENTER_X + 26,
	TargetTrackerY = SCREEN_CENTER_Y + 30,
	MiniProgressBarX = SCREEN_CENTER_X + 44,
	MiniProgressBarY = SCREEN_CENTER_Y + 34,
	FullProgressBarX = SCREEN_CENTER_X,
	FullProgressBarY = 20,
	JudgeCounterX = SCREEN_CENTER_X -200,
	JudgeCounterY = SCREEN_CENTER_Y,
	DisplayPercentX = SCREEN_CENTER_X - 170,
	DisplayPercentY = SCREEN_CENTER_Y - 60,
	NPSDisplayX = 5,
	NPSDisplayY = SCREEN_BOTTOM - 170,
	NPSGraphX = 0,
	NPSGraphY = SCREEN_BOTTOM - 160,
	NotefieldX = 0,
	NotefieldY = 0,
	ProgressBarPos = 1,
	LeaderboardX = 0,
	LeaderboardY = SCREEN_HEIGHT / 10,
	ReplayButtonsX = SCREEN_WIDTH - 45,
	ReplayButtonsY = SCREEN_HEIGHT / 2 - 100,
	LifeP1X = 40,
	LifeP1Y = SCREEN_CENTER_Y,
	LifeP1Rotation = -90,
	PracticeCDGraphX = 10,
	PracticeCDGraphY = 85
}

local defaultGameplaySizes = {
	JudgeZoom = 1.0,
	ComboZoom = 0.6,
	ErrorBarWidth = 240,
	ErrorBarHeight = 10,
	TargetTrackerZoom = 0.4,
	FullProgressBarWidth = 1.0,
	FullProgressBarHeight = 1.0,
	DisplayPercentZoom = 1,
	NPSDisplayZoom = 0.4,
	NPSGraphWidth = 1.0,
	NPSGraphHeight = 1.0,
	NotefieldWidth = 1.0,
	NotefieldHeight = 1.0,
	LeaderboardWidth = 1.0,
	LeaderboardHeight = 1.0,
	LeaderboardSpacing = 0.0,
	ReplayButtonsZoom = 1.0,
	ReplayButtonsSpacing = 0.0,
	LifeP1Width = 1.0,
	LifeP1Height = 1.0,
	PracticeCDGraphWidth = 0.8,
	PracticeCDGraphHeight = 1
}

local defaultConfig = {
	ScreenFilter = 0,
	JudgeType = 1,
	AvgScoreType = 0,
	GhostScoreType = 1,
	DisplayPercent = false,
	TargetTracker = false,
	TargetGoal = 93,
	TargetTrackerMode = 0,
	JudgeCounter = false,
	ErrorBar = 0,
	leaderboardEnabled = false,
	PlayerInfo = false,
	FullProgressBar = true,
	MiniProgressBar = false,
	LaneCover = 0, -- soon to be changed to: 0=off, 1=sudden, 2=hidden
	LaneCoverHeight = 10,
	NPSDisplay = false,
	NPSGraph = false,
	CBHighlight = false,
	OneShotMirror = false,
	JudgmentText = false,
	ComboText = false,
	ReceptorSize = 100,
	BackgroundType = 1,
	UserName = "",
	PasswordToken = "",
	CustomizeGameplay = false,
	CustomEvaluationWindowTimings = false,
	PracticeMode = false,
	GameplayXYCoordinates = {
		["4K"] = DeepCopy(defaultGameplayCoordinates),
		["5K"] = DeepCopy(defaultGameplayCoordinates),
		["6K"] = DeepCopy(defaultGameplayCoordinates),
		["7K"] = DeepCopy(defaultGameplayCoordinates),
		["8K"] = DeepCopy(defaultGameplayCoordinates),
		["10K"] = DeepCopy(defaultGameplayCoordinates)
	},
	GameplaySizes = {
		["4K"] = DeepCopy(defaultGameplaySizes),
		["5K"] = DeepCopy(defaultGameplaySizes),
		["6K"] = DeepCopy(defaultGameplaySizes),
		["7K"] = DeepCopy(defaultGameplaySizes),
		["8K"] = DeepCopy(defaultGameplaySizes),
		["10K"] = DeepCopy(defaultGameplaySizes)
	}
}

playerConfig = create_setting("playerConfig", "playerConfig.lua", defaultConfig, -1)
local tmp2 = playerConfig.load
playerConfig.load = function(self, slot)
	local tmp = force_table_elements_to_match_type
	force_table_elements_to_match_type = function()
	end
	local x = create_setting("playerConfig", "playerConfig.lua", {}, -1)
	x = x:load(slot)
	local coords = x.GameplayXYCoordinates
	local sizes = x.GameplaySizes
	if sizes and not sizes["4K"] then
		defaultConfig.GameplaySizes["4K"] = sizes
		defaultConfig.GameplaySizes["5K"] = sizes
		defaultConfig.GameplaySizes["6K"] = sizes
		defaultConfig.GameplaySizes["7K"] = sizes
		defaultConfig.GameplaySizes["8K"] = sizes
		defaultConfig.GameplaySizes["10K"] = sizes
	end
	if coords and not coords["4K"] then
		defaultConfig.GameplayXYCoordinates["4K"] = coords
		defaultConfig.GameplayXYCoordinates["5K"] = coords
		defaultConfig.GameplayXYCoordinates["6K"] = coords
		defaultConfig.GameplayXYCoordinates["7K"] = coords
		defaultConfig.GameplayXYCoordinates["8K"] = coords
		defaultConfig.GameplayXYCoordinates["10K"] = coords
	end
	force_table_elements_to_match_type = tmp
	return tmp2(self, slot)
end
playerConfig:load()

function LoadProfileCustom(profile, dir)
	local players = GAMESTATE:GetEnabledPlayers()
	local playerProfile
	local pn
	for k, v in pairs(players) do
		playerProfile = PROFILEMAN:GetProfile(v)
		if playerProfile:GetGUID() == profile:GetGUID() then
			pn = v
		end
	end

	if pn then
		local conf = playerConfig:load(pn_to_profile_slot(pn))
	end
end

function SaveProfileCustom(profile, dir)
	local players = GAMESTATE:GetEnabledPlayers()
	local playerProfile
	local pn
	for k, v in pairs(players) do
		playerProfile = PROFILEMAN:GetProfile(v)
		if playerProfile:GetGUID() == profile:GetGUID() then
			pn = v
		end
	end

	if pn then
		playerConfig:set_dirty(pn_to_profile_slot(pn))
		playerConfig:save(pn_to_profile_slot(pn))
	end
end
