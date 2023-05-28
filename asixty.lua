
local Spawner = loadstring(game:HttpGet('https://raw.githubusercontent.com/MuhXd/DoorSuff/main/OtherSuff/DoorEntitySpawn%2BSource'))()


-- Create entity
local entity = Spawner.createEntity({
    CustomName = "A-60", -- Custom name of your entity
    Model = "rbxassetid://11573495258", -- Can be GitHub file or rbxassetid
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    NoDieOnCrouching = false,
    NoHiding = false,
    AntiCrucifix = true,
    KillRange = 15,
    OneRoom = false,
    DieOnLook = false,
    BreakLights = false,
    BackwardsMovement = false,
     MovementDeath = {
        true, -- Turned On?
        '1',  --- '1'= 'Instant Without Being Looked out' | '2' = 'With Being Looked At'
    },
    FlickerLights = {
        false, -- Enabled/Disabled
        1, -- Time (seconds)
    },
EntitySounds = { -- Can Get rid Of
PlaySound = {
              "https://github.com/JohnyGamingLUA/A-666/blob/main/funnyredman.mp3?raw=true", -- SoundId Link or Roblox ID
            { Volume = 5 }, -- Sound properties
       },
        
                   
          Footsteps = {
             "https://github.com/JohnyGamingLUA/A-666/blob/main/funnyredman.mp3?raw=true", -- SoundId Link or Roblox ID
              { Volume = 5 }, -- Sound properties
          },
    }, -- Up to Here

    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Type = "2", -- "Normal" or 1 | "Pop" or 2 | "endlessdoorsrebound" or "Rebound" or 3 | More coming Soon
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                "https://github.com/JohnyGamingLUA/A-666/blob/main/funnyredman.mp3?raw=true", -- SoundId Link or Roblox ID
                { Volume = 5 }, -- Sound properties
            },
            Sound2 = {
                "https://github.com/JohnyGamingLUA/A-666/blob/main/funnyredman.mp3?raw=true", -- SoundId Link or Roblox ID
                { Volume = 3 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    Color = 'CuriousLight', -- CuriousLight ( Yellow ) | GuidingLight ( Blue )
    DiffrentMessages = true,
    CustomDialog = {  
        {"Wait... what is this place?", "That thing isn't supposed to be here...", "Something has broken into your dimension", "Hey, how about you come to my place when you're free?"}, -- Death Messages
        {"What did you- wait this place again?", "...", "Let's just hope it doesn't happen again", "I'll see you in my dimension soon... right?"},
        {"Seriously? Again?", "Just try to avoid that thing and come to my place", "We have work to do"},
        {"Come on, is it really that hard?", "I feel like I don't have to explain what to do for this one...", "I'll see you next time"},
         {"The red one again? In this place?", "Just find a hiding place when you hear it", "Really not that hard", " Anyways, I'll see you next time at my place"}
    }
})

-----[[ Advanced Sctipting ]]-----

entity.Debug.OnEntityMoving = function(Invincible,Hiding,plrCollisionPoint)
print("Invincible: "..tostring(Invincible))
print("Player to Entity Collision (None hiding Point): "..tostring(plrCollisionPoint))
print("Hiding: "..tostring(Hiding))
end
       
entity.Debug.OnEntitySpawned = function()
    print("Entity has spawned:")
end

entity.Debug.OnEntityDespawned = function()
    print("Entity has despawned:")
end

entity.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:")
end

entity.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:")
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", "has entered room:",room)
end

entity.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:")
end

entity.Debug.OnDeath = function()
    warn("Player has died.")
end

------------------------

-- Run the created entity
Spawner.runEntity(entity)
