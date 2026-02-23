-- ============================================================
--   SP HUB  |  Roblox Script Hub
--   Library : WindUI (latest)
--   Version : 3.0 — Universal tab + Game Detection
-- ============================================================

-- ──────────────────────────────────────────────────────────────
-- 1. LOAD WINDUI
-- ──────────────────────────────────────────────────────────────
local WindUI = loadstring(game:HttpGet(
    "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
))()

-- ──────────────────────────────────────────────────────────────
-- 2. GAME ID MAP
--    Links each Roblox PlaceId to the matching Games entry title.
--    Add more PlaceIds here whenever needed.
-- ──────────────────────────────────────────────────────────────
local GameIdMap = {
    -- Steal a Brainrot | roblox.com/games/109983668079237
    [109983668079237] = "Steal Brainrot",
    -- [DUELS] Steal a Brainrot PVP | roblox.com/games/96342491571673
    [96342491571673]  = "Brainrot PVP",
    -- RIVALS | roblox.com/games/17625359962
    [17625359962]     = "Rivals",
    -- Supermarket Together | roblox.com/games/117868278782684
    [117868278782684] = "Supermarket Together",
    -- 99 Nights in the Forest | roblox.com/games/79546208627805
    [79546208627805]  = "99Night",
    -- The Forge | roblox.com/games/76558904092080
    [76558904092080]  = "The Forge",
    -- Plants vs Brainrots | roblox.com/games/127742093697776
    [127742093697776] = "Plant vs Brainrot",
    -- Blox Fruits | roblox.com/games/2753915549
    [2753915549]      = "Blox Fruits",
    -- Arsenal | roblox.com/games/286090429
    [286090429]       = "Arsenal",
    -- Adopt Me | roblox.com/games/920587237
    [920587237]       = "Adopt Me",
    -- Escape Tsunami For Brainrots | roblox.com/games/131623223084840
    [131623223084840] = "Escape Tsunami",
    -- Cook Burgers | roblox.com/games/2971329387
    [2971329387]      = "Cook Burger",
    -- Blade Ball | roblox.com/games/13772394625
    [13772394625]     = "Blade Ball",
    -- Death Ball | roblox.com/games/15002061926
    [15002061926]     = "Death Ball",
    -- Murder Mystery 2 | roblox.com/games/142823291
    [142823291]       = "MM2",
    -- NOTE: Blox Strike, Flick, Guess The Slaper, Fish, Fish Lucky Block
    -- could not be confirmed — add their IDs here once verified in-game
    -- by running: print(game.PlaceId) in your executor console
}

-- ──────────────────────────────────────────────────────────────
-- 3. SCRIPT DATABASE
--    Structure: { title, icon, scripts = { {name, code} } }
-- ──────────────────────────────────────────────────────────────
local Games = {

    -- 1. STEAL A BRAINROT SCRIPT
    {
        title = "Steal Brainrot",
        icon  = "brain",
        scripts = {
            {
                name = "SB Hub",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/abdnish/BypassCommunity/main/Main.lua"))()]]
            },
            {
                name = "KURD HUB V6",
                code = [[loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Kurd-Hub-27356"))()]]
            },
            {
                name = "ICE HUB",
                code = [[loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/26a720688fde4907da845a1314a1ce5e.lua"))()]]
            },
            {
                name = "Nameless Hub",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/ily123950/Vulkan/refs/heads/main/Tr"))()]]
            },
            {
                name = "Lumora FPS Destroyer",
                code = [[loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/af487c213fc26278d57976f8e03a1b5b.lua"))()]]
            },
            {
                name = "Lennon Hub",
                code = [[loadstring(game:HttpGet("https://rawscripts.net/raw/Steal-a-Brainrot-Lennon-hub-v5-52358"))()]]
            },
            {
                name = "Chilli Hub",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()]]
            },
            {
                name = "Kurd Hub",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Ninja10908/S4/refs/heads/main/Kurdhub"))()]]
            },
            {
                name = "Miranda Hub",
                code = [[loadstring(game:HttpGet("https://pastefy.app/JJVhs3rK/raw"))()]]
            },
            {
                name = "Lipe Speed",
                code = [[loadstring(game:HttpGet("https://pastebin.com/raw/ke146qjn"))()]]
            },
            {
                name = "LEMON",
                code = [[loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/ffdfeadf0af798741806ea404682a938.lua"))()]]
            },
            {
                name = "INSTANT STEAL",
                code = [[loadstring(game:HttpGet("https://pastebin.com/raw/YYbETYLr"))()]]
            },
        }
    },

    -- 2. STEAL A BRAINROT PVP
    {
        title = "Brainrot PVP",
        icon  = "swords",
        scripts = {
            {
                name = "Admin Spam",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/LucasggkX/Games/refs/heads/main/Admin%20Spam.lua"))()]]
            },
            {
                name = "Vinx Hub",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Vinx-Hub/SAB/refs/heads/main/loader"))()]]
            },
            {
                name = "AUTO BAT",
                code = [[loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/89c5ae41fcbb303c8091c29d2f517945.lua"))()]]
            },
            {
                name = "UNWALK",
                code = [[loadstring(game:HttpGet("https://pastebin.com/raw/HRnYftc7"))()]]
            },
            {
                name = "NARUTO SPEED (31 IN STEAL)",
                code = [[loadstring(game:HttpGet("https://pastefy.app/90FCQEaw/raw"))()]]
            },
        }
    },

    -- 3. RIVALS
    {
        title = "Rivals",
        icon  = "target",
        scripts = {
            {
                name = "terminationW Silent Aim",
                code = [[loadstring(game:HttpGet("https://rawscripts.net/raw/RIVALS-terminationW-silent-aim-56940"))()]]
            },
            {
                name = "KEYLESS SILENT AIM",
                code = [[loadstring(game:HttpGet("https://rawscripts.net/raw/RIVALS-KEYLESS-SILENT-AIM-MOBILE-SUPPORTED-ESP-OP-83473"))()]]
            },
        }
    },

    -- 4. SUPERMARKET TOGETHER
    {
        title = "Supermarket Together",
        icon  = "shopping-cart",
        scripts = {
            {
                name = "Supermarket Together Script",
                code = [[loadstring(game:HttpGet("https://pastebin.com/raw/HAr5GWxk"))()]]
            },
        }
    },

    -- 5. 99NIGHT
    {
        title = "99Night",
        icon  = "moon",
        scripts = {
            {
                name = "nightsintheforest",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua", true))()]]
            },
            {
                name = "FoxnameHub",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/FoxnameHub.lua"))()]]
            },
        }
    },

    -- 6. THE FORGE
    {
        title = "The Forge",
        icon  = "hammer",
        scripts = {
            {
                name = "BETA BAREBONES AUTO FORGE",
                code = [[loadstring(game:HttpGet("https://rawscripts.net/raw/The-Forge-BETA-BAREBONES-AUTO-FORGE-86444"))()]]
            },
            {
                name = "AirflowScript",
                code = [[loadstring(game:HttpGet("https://airflowscript.com/loader"))()]]
            },
            {
                name = "Pastefy Script",
                code = [[loadstring(game:HttpGet("https://pastefy.app/RpcM27HB/raw"))()]]
            },
        }
    },

    -- 7. PLANT VS BRAINROT
    {
        title = "Plant vs Brainrot",
        icon  = "flower-2",
        scripts = {
            {
                name = "Plant vs Brainrot 1",
                code = [[loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d0a2d025f5e63d3f369e2e3fe33b872a.lua"))()]]
            },
            {
                name = "Plant vs Brainrot 2",
                code = [[loadstring(game:HttpGet("http://109.71.240.235:3910/api/run/eyJpZCI6IjY1MGYzZmE4LTUzNzItNGZlYy05MzM4LTM3NDNjY2RmMDQwYiIsImtpbmQiOiJsb2FkZXIiLCJ2aXN1YWwiOnsiaWQiOiJ1bml2ZXJzYWwifX0"))()]]
            },
        }
    },

    -- 8. BLOX FRUITS
    {
        title = "Blox Fruits",
        icon  = "cherry",
        scripts = {
            {
                name = "SapiHub Fruits PvP",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/land9678/VT/refs/heads/main/SapiHubFruitsPvp"))()]]
            },
            {
                name = "DatThg V2",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/DatThg/refs/heads/main/DatThgV2"))()]]
            },
            {
                name = "redzHub",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/huy384/redzHub/refs/heads/main/redzHub.lua"))()]]
            },
        }
    },

    -- 9. ARSENAL
    {
        title = "Arsenal",
        icon  = "crosshair",
        scripts = {
            {
                name = "unbound-hub",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/samerop/unbound-hub/main/unbound-hub.lua"))()]]
            },
        }
    },

    -- 10. ADOPT ME
    {
        title = "Adopt Me",
        icon  = "heart",
        scripts = {
            {
                name = "Adopt Me Script",
                code = [[loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/4a873606f2053bf3067ad6da43b5baee.lua"))()]]
            },
        }
    },

    -- 11. ESCAPE TSUNAMI FOR BRAINROT
    {
        title = "Escape Tsunami",
        icon  = "waves",
        scripts = {
            {
                name = "Escape Tsunami 1",
                code = [[loadstring(game:HttpGet("https://incorbxlua.onrender.com/raw/6da9bcfc-369d-4462-ae73-ee5f804bf84b"))()]]
            },
            {
                name = "Escape Tsunami 2",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/EscapeTsunamiForBrainrots"))()]]
            },
            {
                name = "Escape Tsunami 3",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/ywxoscripts/lua/refs/heads/main/9363735110.lua"))()]]
            },
            {
                name = "Escape Tsunami 4",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/1heo2fine/idk/main/script.lua"))()]]
            },
        }
    },

    -- 12. COOK BURGER
    {
        title = "Cook Burger",
        icon  = "beef",
        scripts = {
            {
                name = "Cook Burgers 1",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/NOOBARMYSCRIPTER/NOOBARMYSCRIPTER/main/cook%20burgers", true))()]]
            },
            {
                name = "Cook Burgers 2",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxhubTeaamammama/Cook-Burgers/refs/heads/main/CookBurgersScriptMadebyxxxomer12345678"))()]]
            },
        }
    },

    -- 13. BLADE BALL
    {
        title = "Blade Ball",
        icon  = "circle-dashed",
        scripts = {
            {
                name = "Blade Ball Script",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Weirol/science.cc/refs/heads/main/Blade%20Ball"))()]]
            },
        }
    },

    -- 14. DEATH BALL
    {
        title = "Death Ball",
        icon  = "zap",
        scripts = {
            {
                name = "Death Ball Script",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/sirapobsriumang/Death-Bal/main/Op-Script-by-me"))()]]
            },
        }
    },

    -- 15. BLOX-STRIKE
    {
        title = "Blox Strike",
        icon  = "shield",
        scripts = {
            {
                name = "Blox Strike Script",
                code = [[getgenv().skipload = true
getgenv().AUTOLOAD = nil
loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/f46a7eb5a71f1048"))()]]
            },
        }
    },

    -- 16. FLICK
    {
        title = "Flick",
        icon  = "wind",
        scripts = {
            {
                name = "Flick Script",
                code = [[_G.HeadSize = 50
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
        for i,v in next, game:GetService('Players'):GetPlayers() do
            if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                pcall(function()
                    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                    v.Character.HumanoidRootPart.Transparency = 0.7
                    v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
                    v.Character.HumanoidRootPart.Material = "Neon"
                    v.Character.HumanoidRootPart.CanCollide = false
                end)
            end
        end
    end
end)]]
            },
        }
    },

    -- 17. GUESS THE SLAPER
    {
        title = "Guess The Slaper",
        icon  = "help-circle",
        scripts = {
            {
                name = "Guess the Slaper Script",
                code = [[loadstring(game:HttpGet("https://pastebin.com/raw/nSr9kc9T"))()]]
            },
        }
    },

    -- 18. FISH FOR LUCKY BLOCK
    {
        title = "Fish Lucky Block",
        icon  = "fish",
        scripts = {
            {
                name = "Fish for Lucky Block",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/FishForLuckyBlocks"))()]]
            },
        }
    },

    -- 19. FISH
    {
        title = "Fish",
        icon  = "anchor",
        scripts = {
            {
                name = "Fish Script",
                code = [[loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/cdc8ffd74b2c33f6c9f47b85f4b77c45.lua"))()]]
            },
        }
    },

    -- 20. MM2
    {
        title = "MM2",
        icon  = "knife",
        scripts = {
            {
                name = "MM2 Script",
                code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Aura-56/MurderMystery2/refs/heads/main/AzureHub.lua", true))()]]
            },
        }
    },
}

-- ──────────────────────────────────────────────────────────────
-- 4. UNIVERSAL SCRIPTS LIST
--    These scripts work on any game.
-- ──────────────────────────────────────────────────────────────
local UniversalScripts = {
    {
        name = "Infinite Yield",
        code = [[loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()]]
    },
}

-- ──────────────────────────────────────────────────────────────
-- 5. CREATE MAIN WINDOW
-- ──────────────────────────────────────────────────────────────
local Window = WindUI:CreateWindow({
    Title       = "SP HUB",
    Icon        = "layout-dashboard",
    Author      = "by SP HUB",
    Folder      = "SPHUB",
    Size        = UDim2.fromOffset(620, 480),
    MinSize     = Vector2.new(560, 380),
    Resizable   = true,
    Transparent = true,
    Theme       = "Dark",
})

-- ──────────────────────────────────────────────────────────────
-- 6. UTILITY FUNCTION – EXECUTE SCRIPT WITH ERROR HANDLING
-- ──────────────────────────────────────────────────────────────
local function executeScript(scriptName, scriptCode)
    WindUI:Notify({
        Title    = "Launching...",
        Content  = "Executing '" .. scriptName .. "'",
        Duration = 2,
        Icon     = "play",
    })

    local ok, err = pcall(function()
        loadstring(scriptCode)()
    end)

    if ok then
        WindUI:Notify({
            Title    = "Success!",
            Content  = "'" .. scriptName .. "' executed successfully.",
            Duration = 4,
            Icon     = "check-circle",
        })
    else
        WindUI:Notify({
            Title    = "Execution Error",
            Content  = tostring(err),
            Duration = 6,
            Icon     = "alert-triangle",
        })
    end
end

-- ──────────────────────────────────────────────────────────────
-- 7. HOME TAB – GAME DETECTION
--    Reads the current PlaceId, matches it against GameIdMap,
--    then checks how many scripts are available for that game.
-- ──────────────────────────────────────────────────────────────
local HomeTab = Window:Tab({
    Title = "Home",
    Icon  = "house",
})

-- Detect current game
local currentPlaceId   = game.PlaceId
local detectedTitle    = GameIdMap[currentPlaceId]   -- nil if unknown
local detectedGameName = detectedTitle or "Unknown Game"

-- Count scripts available for the detected game
local scriptCount = 0
if detectedTitle then
    for _, g in ipairs(Games) do
        if g.title == detectedTitle then
            scriptCount = #g.scripts
            break
        end
    end
end

-- Display detection result as a button (non-interactive, used as info label)
if detectedTitle then
    -- Game is supported — show name + script count
    HomeTab:Button({
        Title    = "Game Detected: " .. detectedGameName,
        Desc     = scriptCount .. " script(s) available — go to the '" .. detectedTitle .. "' tab!",
        Callback = function()
            -- Clicking navigates the user with a helpful notification
            WindUI:Notify({
                Title    = "Go to: " .. detectedTitle,
                Content  = "Open the '" .. detectedTitle .. "' tab in the sidebar to see " .. scriptCount .. " script(s).",
                Duration = 5,
                Icon     = "map-pin",
            })
        end,
    })
else
    -- Game is not in the database
    HomeTab:Button({
        Title    = "Game Detected: " .. tostring(currentPlaceId),
        Desc     = "No scripts found for this game in SP HUB.",
        Callback = function()
            WindUI:Notify({
                Title    = "No scripts found",
                Content  = "PlaceId " .. tostring(currentPlaceId) .. " is not supported yet.",
                Duration = 5,
                Icon     = "search-x",
            })
        end,
    })
end

HomeTab:Space()

-- Universal scripts reminder button
HomeTab:Button({
    Title    = "Universal scripts are always available",
    Desc     = "Check the 'Universal' tab for scripts that work on any game.",
    Callback = function()
        WindUI:Notify({
            Title    = "Universal Scripts",
            Content  = "Head to the Universal tab to run scripts on any game!",
            Duration = 4,
            Icon     = "globe",
        })
    end,
})

-- ──────────────────────────────────────────────────────────────
-- 8. UNIVERSAL TAB
-- ──────────────────────────────────────────────────────────────
local UniversalTab = Window:Tab({
    Title = "Universal",
    Icon  = "globe",
})

for i, script_entry in ipairs(UniversalScripts) do
    local capturedName = script_entry.name
    local capturedCode = script_entry.code

    UniversalTab:Button({
        Title    = capturedName,
        Desc     = "Works on any game — click to execute",
        Callback = function()
            executeScript(capturedName, capturedCode)
        end,
    })

    if i < #UniversalScripts then
        UniversalTab:Space()
    end
end

-- ──────────────────────────────────────────────────────────────
-- 9. GAME TABS – DYNAMICALLY BUILT
-- ──────────────────────────────────────────────────────────────
for _, game_entry in ipairs(Games) do
    local Tab = Window:Tab({
        Title = game_entry.title,
        Icon  = game_entry.icon,
    })

    for i, script_entry in ipairs(game_entry.scripts) do
        local capturedName = script_entry.name
        local capturedCode = script_entry.code

        Tab:Button({
            Title    = capturedName,
            Desc     = "Click to execute this script",
            Callback = function()
                executeScript(capturedName, capturedCode)
            end,
        })

        if i < #game_entry.scripts then
            Tab:Space()
        end
    end
end

-- ──────────────────────────────────────────────────────────────
-- 10. WELCOME NOTIFICATION WITH GAME DETECTION RESULT
-- ──────────────────────────────────────────────────────────────
if detectedTitle then
    WindUI:Notify({
        Title    = "Game Detected: " .. detectedGameName,
        Content  = scriptCount .. " script(s) available! Go to the '" .. detectedTitle .. "' tab.",
        Duration = 6,
        Icon     = "radar",
    })
else
    WindUI:Notify({
        Title    = "SP HUB Loaded!",
        Content  = "No scripts found for this game. Check Universal scripts!",
        Duration = 5,
        Icon     = "layout-dashboard",
    })
end

-- ──────────────────────────────────────────────────────────────
-- END OF SP HUB v3
-- ──────────────────────────────────────────────────────────────
