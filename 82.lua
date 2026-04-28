local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

----------------------------------------------------
-- THE ULTIMATE GLOBAL HINT DATABASE
----------------------------------------------------
local info = {
    -- ASIA
    AFGHANISTAN={continent="Asia",city="Kabul",flag="🇦🇫",currency="Afghani"},
    ARMENIA={continent="Asia",city="Yerevan",flag="🇦🇲",currency="Dram"},
    AZERBAIJAN={continent="Asia",city="Baku",flag="🇦🇿",currency="Manat"},
    BAHRAIN={continent="Asia",city="Manama",flag="🇧🇭",currency="Dinar"},
    BANGLADESH={continent="Asia",city="Dhaka",flag="🇧🇩",currency="Taka"},
    BHUTAN={continent="Asia",city="Thimphu",flag="🇧🇹",currency="Ngultrum"},
    BRUNEI={continent="Asia",city="Bandar Seri Begawan",flag="🇧🇳",currency="Dollar"},
    CAMBODIA={continent="Asia",city="Phnom Penh",flag="🇰🇭",currency="Riel"},
    CHINA={continent="Asia",city="Beijing",flag="🇨🇳",currency="Yuan"},
    CYPRUS={continent="Asia",city="Nicosia",flag="🇨🇾",currency="Euro"},
    GEORGIA={continent="Asia",city="Tbilisi",flag="🇬🇪",currency="Lari"},
    INDIA={continent="Asia",city="New Delhi",flag="🇮🇳",currency="Rupee"},
    INDONESIA={continent="Asia",city="Jakarta",flag="🇮🇩",currency="Rupiah"},
    IRAN={continent="Asia",city="Tehran",flag="🇮🇷",currency="Rial"},
    IRAQ={continent="Asia",city="Baghdad",flag="🇮🇶",currency="Dinar"},
    ISRAEL={continent="Asia",city="Jerusalem",flag="🇮🇱",currency="Shekel"},
    JAPAN={continent="Asia",city="Tokyo",flag="🇯🇵",currency="Yen"},
    JORDAN={continent="Asia",city="Amman",flag="🇯🇴",currency="Dinar"},
    KAZAKHSTAN={continent="Asia",city="Astana",flag="🇰🇿",currency="Tenge"},
    KUWAIT={continent="Asia",city="Kuwait City",flag="🇰🇼",currency="Dinar"},
    KYRGYZSTAN={continent="Asia",city="Bishkek",flag="🇰🇬",currency="Som"},
    LAOS={continent="Asia",city="Vientiane",flag="🇱🇦",currency="Kip"},
    LEBANON={continent="Asia",city="Beirut",flag="🇱🇧",currency="Pound"},
    MALAYSIA={continent="Asia",city="Kuala Lumpur",flag="🇲🇾",currency="Ringgit"},
    MALDIVES={continent="Asia",city="Male",flag="🇲🇻",currency="Rufiyaa"},
    MONGOLIA={continent="Asia",city="Ulaanbaatar",flag="🇲🇳",currency="Togrog"},
    MYANMAR={continent="Asia",city="Naypyidaw",flag="🇲🇲",currency="Kyat"},
    NEPAL={continent="Asia",city="Kathmandu",flag="🇳🇵",currency="Rupee"},
    NORTHKOREA={continent="Asia",city="Pyongyang",flag="🇰🇵",currency="Won"},
    OMAN={continent="Asia",city="Muscat",flag="🇴🇲",currency="Rial"},
    PAKISTAN={continent="Asia",city="Islamabad",flag="🇵🇰",currency="Rupee"},
    PHILIPPINES={continent="Asia",city="Manila",flag="🇵🇭",currency="Peso"},
    QATAR={continent="Asia",city="Doha",flag="🇶🇦",currency="Rial"},
    SAUDIARABIA={continent="Asia",city="Riyadh",flag="🇸🇦",currency="Riyal"},
    SINGAPORE={continent="Asia",city="Singapore",flag="🇸🇬",currency="Dollar"},
    SOUTHKOREA={continent="Asia",city="Seoul",flag="🇰🇷",currency="Won"},
    SRILANKA={continent="Asia",city="Colombo",flag="🇱🇰",currency="Rupee"},
    SYRIA={continent="Asia",city="Damascus",flag="🇸🇾",currency="Pound"},
    TAIWAN={continent="Asia",city="Taipei",flag="🇹🇼",currency="Dollar"},
    TAJIKISTAN={continent="Asia",city="Dushanbe",flag="🇹🇯",currency="Somoni"},
    THAILAND={continent="Asia",city="Bangkok",flag="🇹🇭",currency="Baht"},
    TURKEY={continent="Asia",city="Ankara",flag="🇹🇷",currency="Lira"},
    TURKMENISTAN={continent="Asia",city="Ashgabat",flag="🇹🇲",currency="Manat"},
    UAE={continent="Asia",city="Abu Dhabi",flag="🇦🇪",currency="Dirham"},
    UZBEKISTAN={continent="Asia",city="Tashkent",flag="🇺🇿",currency="Som"},
    VIETNAM={continent="Asia",city="Hanoi",flag="🇻🇳",currency="Dong"},
    YEMEN={continent="Asia",city="Sana'a",flag="🇾🇪",currency="Rial"},

    -- EUROPE
    ALBANIA={continent="Europe",city="Tirana",flag="🇦🇱",currency="Lek"},
    ANDORRA={continent="Europe",city="Andorra la Vella",flag="🇦🇩",currency="Euro"},
    AUSTRIA={continent="Europe",city="Vienna",flag="🇦🇹",currency="Euro"},
    BELARUS={continent="Europe",city="Minsk",flag="🇧🇾",currency="Ruble"},
    BELGIUM={continent="Europe",city="Brussels",flag="🇧🇪",currency="Euro"},
    BULGARIA={continent="Europe",city="Sofia",flag="🇧🇬",currency="Lev"},
    CROATIA={continent="Europe",city="Zagreb",flag="🇭🇷",currency="Euro"},
    CZECHREPUBLIC={continent="Europe",city="Prague",flag="🇨🇿",currency="Koruna"},
    DENMARK={continent="Europe",city="Copenhagen",flag="🇩🇰",currency="Krone"},
    ESTONIA={continent="Europe",city="Tallinn",flag="🇪🇪",currency="Euro"},
    FINLAND={continent="Europe",city="Helsinki",flag="🇫🇮",currency="Euro"},
    FRANCE={continent="Europe",city="Paris",flag="🇫🇷",currency="Euro"},
    GERMANY={continent="Europe",city="Berlin",flag="🇩🇪",currency="Euro"},
    GREECE={continent="Europe",city="Athens",flag="🇬🇷",currency="Euro"},
    HUNGARY={continent="Europe",city="Budapest",flag="🇭🇺",currency="Forint"},
    ICELAND={continent="Europe",city="Reykjavik",flag="🇮🇸",currency="Krona"},
    IRELAND={continent="Europe",city="Dublin",flag="🇮🇪",currency="Euro"},
    ITALY={continent="Europe",city="Rome",flag="🇮🇹",currency="Euro"},
    LATVIA={continent="Europe",city="Riga",flag="🇱🇻",currency="Euro"},
    LITHUANIA={continent="Europe",city="Vilnius",flag="🇱🇹",currency="Euro"},
    LUXEMBOURG={continent="Europe",city="Luxembourg",flag="🇱🇺",currency="Euro"},
    MALTA={continent="Europe",city="Valletta",flag="🇲🇹",currency="Euro"},
    MONACO={continent="Europe",city="Monaco",flag="🇲🇨",currency="Euro"},
    NETHERLANDS={continent="Europe",city="Amsterdam",flag="🇳🇱",currency="Euro"},
    NORWAY={continent="Europe",city="Oslo",flag="🇳🇴",currency="Krone"},
    POLAND={continent="Europe",city="Warsaw",flag="🇵🇱",currency="Zloty"},
    PORTUGAL={continent="Europe",city="Lisbon",flag="🇵🇹",currency="Euro"},
    ROMANIA={continent="Europe",city="Bucharest",flag="🇷🇴",currency="Leu"},
    RUSSIA={continent="Europe/Asia",city="Moscow",flag="🇷🇺",currency="Ruble"},
    SPAIN={continent="Europe",city="Madrid",flag="🇪🇸",currency="Euro"},
    SWEDEN={continent="Europe",city="Stockholm",flag="🇸🇪",currency="Krona"},
    SWITZERLAND={continent="Europe",city="Bern",flag="🇨🇭",currency="Franc"},
    UKRAINE={continent="Europe",city="Kyiv",flag="🇺🇦",currency="Hryvnia"},
    UNITEDKINGDOM={continent="Europe",city="London",flag="🇬🇧",currency="Pound"},

    -- NORTH AMERICA
    BAHAMAS={continent="North America",city="Nassau",flag="🇧🇸",currency="Dollar"},
    CANADA={continent="North America",city="Ottawa",flag="🇨🇦",currency="Dollar"},
    COSTARICA={continent="North America",city="San Jose",flag="🇨🇷",currency="Colon"},
    CUBA={continent="North America",city="Havana",flag="🇨🇺",currency="Peso"},
    DOMINICANREPUBLIC={continent="North America",city="Santo Domingo",flag="🇩🇴",currency="Peso"},
    ELSALVADOR={continent="North America",city="San Salvador",flag="🇸🇻",currency="Dollar"},
    GUATEMALA={continent="North America",city="Guatemala City",flag="🇬🇹",currency="Quetzal"},
    HAITI={continent="North America",city="Port-au-Prince",flag="🇭🇹",currency="Gourde"},
    HONDURAS={continent="North America",city="Tegucigalpa",flag="🇭🇳",currency="Lempira"},
    JAMAICA={continent="North America",city="Kingston",flag="🇯🇲",currency="Dollar"},
    MEXICO={continent="North America",city="Mexico City",flag="🇲🇽",currency="Peso"},
    PANAMA={continent="North America",city="Panama City",flag="🇵🇦",currency="Balboa"},
    UNITEDSTATES={continent="North America",city="Washington D.C.",flag="🇺🇸",currency="Dollar"},

    -- SOUTH AMERICA
    ARGENTINA={continent="South America",city="Buenos Aires",flag="🇦🇷",currency="Peso"},
    BOLIVIA={continent="South America",city="Sucre",flag="🇧🇴",currency="Boliviano"},
    BRAZIL={continent="South America",city="Brasilia",flag="🇧🇷",currency="Real"},
    CHILE={continent="South America",city="Santiago",flag="🇨🇱",currency="Peso"},
    COLOMBIA={continent="South America",city="Bogota",flag="🇨🇴",currency="Peso"},
    ECUADOR={continent="South America",city="Quito",flag="🇪🇨",currency="Dollar"},
    PARAGUAY={continent="South America",city="Asuncion",flag="🇵🇾",currency="Guarani"},
    PERU={continent="South America",city="Lima",flag="🇵🇪",currency="Sol"},
    URUGUAY={continent="South America",city="Montevideo",flag="🇺🇾",currency="Peso"},
    VENEZUELA={continent="South America",city="Caracas",flag="🇻🇪",currency="Bolivar"},

    -- AFRICA
    ALGERIA={continent="Africa",city="Algiers",flag="🇩🇿",currency="Dinar"},
    ANGOLA={continent="Africa",city="Luanda",flag="🇦🇴",currency="Kwanza"},
    CAMEROON={continent="Africa",city="Yaounde",flag="🇨🇲",currency="Franc"},
    EGYPT={continent="Africa",city="Cairo",flag="🇪🇬",currency="Pound"},
    ETHIOPIA={continent="Africa",city="Addis Ababa",flag="🇪🇹",currency="Birr"},
    GHANA={continent="Africa",city="Accra",flag="🇬🇭",currency="Cedi"},
    KENYA={continent="Africa",city="Nairobi",flag="🇰🇪",currency="Shilling"},
    MOROCCO={continent="Africa",city="Rabat",flag="🇲🇦",currency="Dirham"},
    NIGERIA={continent="Africa",city="Abuja",flag="🇳🇬",currency="Naira"},
    SOUTHAFRICA={continent="Africa",city="Pretoria",flag="🇿🇦",currency="Rand"},
    TANZANIA={continent="Africa",city="Dodoma",flag="🇹🇿",currency="Shilling"},
    UGANDA={continent="Africa",city="Kampala",flag="🇺🇬",currency="Shilling"},

    -- OCEANIA
    AUSTRALIA={continent="Oceania",city="Canberra",flag="🇦🇺",currency="Dollar"},
    FIJI={continent="Oceania",city="Suva",flag="🇫🇯",currency="Dollar"},
    NEWZEALAND={continent="Oceania",city="Wellington",flag="🇳🇿",currency="Dollar"},
    PAPUANEWGUINEA={continent="Oceania",city="Port Moresby",flag="🇵🇬",currency="Kina"}
}

local countries = {}
for name, _ in pairs(info) do table.insert(countries, name) end

----------------------------------------------------
-- CONFIG
----------------------------------------------------
local Config = {
    ToggleKey = Enum.KeyCode.Insert,
    Visible = true,
    ListeningForKey = false,
    CurrentPage = "Search" -- "Search" or "Settings"
}

----------------------------------------------------
-- UI INITIALIZATION
----------------------------------------------------
pcall(function() game.CoreGui.GoogleUI:Destroy() end)
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "GoogleUI"

local mainFrame = Instance.new("Frame", gui)
mainFrame.Size = UDim2.new(0, 420, 0, 420)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true; mainFrame.Draggable = true
Instance.new("UICorner", mainFrame)

local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, -50, 0, 35); title.Position = UDim2.new(0, 15, 0, 0)
title.Text = "Jonh.exe⚙️"; title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold; title.BackgroundTransparency = 1; title.TextXAlignment = "Left"

local settingsBtn = Instance.new("TextButton", mainFrame)
settingsBtn.Size = UDim2.new(0, 30, 0, 30); settingsBtn.Position = UDim2.new(1, -40, 0, 5)
settingsBtn.Text = "⚙️"; settingsBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
settingsBtn.TextColor3 = Color3.new(1, 1, 1); Instance.new("UICorner", settingsBtn)

----------------------------------------------------
-- SEARCH PAGE CONTAINER
----------------------------------------------------
local searchPage = Instance.new("Frame", mainFrame)
searchPage.Size = UDim2.new(1, 0, 0.88, 0); searchPage.Position = UDim2.new(0, 0, 0.12, 0)
searchPage.BackgroundTransparency = 1

local autoEnabled = false
local autoBtn = Instance.new("TextButton", searchPage)
autoBtn.Size = UDim2.new(0.9, 0, 0, 30); autoBtn.Position = UDim2.new(0.05, 0, 0.02, 0)
autoBtn.BackgroundColor3 = Color3.fromRGB(55, 55, 55); autoBtn.Text = "AUTO SCAN: OFF"
autoBtn.TextColor3 = Color3.new(1, 1, 1); autoBtn.Font = Enum.Font.GothamBold; Instance.new("UICorner", autoBtn)

local searchBar = Instance.new("TextBox", searchPage)
searchBar.Size = UDim2.new(0.9, 0, 0, 35); searchBar.Position = UDim2.new(0.05, 0, 0.12, 0)
searchBar.PlaceholderText = "Search spelling or Pattern..."; searchBar.Text = ""
searchBar.Font = Enum.Font.Gotham; searchBar.BackgroundColor3 = Color3.new(1,1,1); Instance.new("UICorner", searchBar)

local results = Instance.new("ScrollingFrame", searchPage)
results.Size = UDim2.new(0.9, 0, 0.75, 0); results.Position = UDim2.new(0.05, 0, 0.23, 0)
results.BackgroundTransparency = 1; results.ScrollBarThickness = 2
local list = Instance.new("UIListLayout", results); list.Padding = UDim.new(0, 5)

----------------------------------------------------
-- SETTINGS PAGE CONTAINER
----------------------------------------------------
local settingsPage = Instance.new("Frame", mainFrame)
settingsPage.Size = UDim2.new(1, 0, 0.88, 0); settingsPage.Position = UDim2.new(0, 0, 0.12, 0)
settingsPage.BackgroundTransparency = 1
settingsPage.Visible = false

local bindHeader = Instance.new("TextLabel", settingsPage)
bindHeader.Size = UDim2.new(1, 0, 0, 40); bindHeader.Position = UDim2.new(0, 0, 0.1, 0)
bindHeader.Text = "SET KEYBIND"; bindHeader.TextColor3 = Color3.new(1,1,1)
bindHeader.Font = Enum.Font.GothamBold; bindHeader.TextSize = 18; bindHeader.BackgroundTransparency = 1

local bindDesc = Instance.new("TextLabel", settingsPage)
bindDesc.Size = UDim2.new(0.8, 0, 0, 40); bindDesc.Position = UDim2.new(0.1, 0, 0.2, 0)
bindDesc.Text = "Click the button below, then press any key to set your custom toggle key for this menu."; bindDesc.TextColor3 = Color3.fromRGB(200,200,200)
bindDesc.Font = Enum.Font.Gotham; bindDesc.TextWrapped = true; bindDesc.BackgroundTransparency = 1; bindDesc.TextSize = 13

local keyBindBtn = Instance.new("TextButton", settingsPage)
keyBindBtn.Size = UDim2.new(0.7, 0, 0, 50); keyBindBtn.Position = UDim2.new(0.15, 0, 0.4, 0)
keyBindBtn.BackgroundColor3 = Color3.fromRGB(66, 133, 244)
keyBindBtn.Text = "CURRENT KEY: " .. Config.ToggleKey.Name:upper()
keyBindBtn.TextColor3 = Color3.new(1,1,1); keyBindBtn.Font = Enum.Font.GothamBold; Instance.new("UICorner", keyBindBtn)

----------------------------------------------------
-- PAGE LOGIC
----------------------------------------------------
settingsBtn.MouseButton1Click:Connect(function()
    if Config.CurrentPage == "Search" then
        Config.CurrentPage = "Settings"
        searchPage.Visible = false
        settingsPage.Visible = true
        settingsBtn.Text = "🔙" -- Change gear to back icon
    else
        Config.CurrentPage = "Search"
        searchPage.Visible = true
        settingsPage.Visible = false
        settingsBtn.Text = "⚙️"
    end
end)

keyBindBtn.MouseButton1Click:Connect(function()
    Config.ListeningForKey = true
    keyBindBtn.Text = ">>> JOJ EY JOJ TV <<<"
    keyBindBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
end)

UserInputService.InputBegan:Connect(function(input, gpe)
    if Config.ListeningForKey and input.KeyCode ~= Enum.KeyCode.Unknown then
        Config.ToggleKey = input.KeyCode
        keyBindBtn.Text = "CURRENT KEY: " .. input.KeyCode.Name:upper()
        keyBindBtn.BackgroundColor3 = Color3.fromRGB(66, 133, 244)
        Config.ListeningForKey = false
    elseif not gpe and input.KeyCode == Config.ToggleKey then
        Config.Visible = not Config.Visible
        mainFrame.Visible = Config.Visible
    end
end)

----------------------------------------------------
-- ENGINE (UTILITIES & SEARCH)
----------------------------------------------------
local function clean(str) return str:upper():gsub("[%s%-%.'&,]", "") end

local function matchesPattern(countryName, pattern)
    local c = clean(countryName); local p = pattern:upper():gsub("[%s%[%]%.%-]", "_")
    if not p:find("_") then return c:find(p) ~= nil end
    if #c ~= #p then return false end
    for i = 1, #p do
        local char = p:sub(i,i)
        if char ~= "_" and char ~= c:sub(i,i) then return false end
    end
    return true
end

local function makeCard(name, rank)
    local c = Instance.new("Frame", results); c.Size = UDim2.new(1, 0, 0, 45)
    c.BackgroundColor3 = Color3.fromRGB(45, 45, 45); Instance.new("UICorner", c)
    local t = Instance.new("TextLabel", c); t.Size = UDim2.new(1, 0, 0, 22)
    t.BackgroundTransparency = 1; t.Font = Enum.Font.GothamBold; t.TextColor3 = Color3.new(1,1,1); t.Text = " " .. rank .. ". " .. name; t.TextXAlignment = "Left"
    local d = info[clean(name)]
    local s = Instance.new("TextLabel", c); s.Position = UDim2.new(0, 0, 0, 22); s.Size = UDim2.new(1, 0, 0, 20)
    s.BackgroundTransparency = 1; s.Font = Enum.Font.Gotham; s.TextColor3 = Color3.fromRGB(180, 180, 180); s.TextSize = 11; s.TextXAlignment = "Left"
    s.Text = d and (" " .. d.flag .. " " .. d.city .. " | " .. d.continent) or " 🌍 Global Database"
end

autoBtn.MouseButton1Click:Connect(function()
    autoEnabled = not autoEnabled
    autoBtn.Text = autoEnabled and "AUTO SCAN: ACTIVE" or "AUTO SCAN: OFF"
    autoBtn.BackgroundColor3 = autoEnabled and Color3.fromRGB(66, 133, 244) or Color3.fromRGB(55, 55, 55)
end)

searchBar:GetPropertyChangedSignal("Text"):Connect(function()
    local raw = searchBar.Text
    for _, v in ipairs(results:GetChildren()) do if v:IsA("Frame") then v:Destroy() end end
    if raw == "" then return end
    local found = {}
    for _, c in ipairs(countries) do if matchesPattern(c, raw) then table.insert(found, c) end end
    table.sort(found, function(a, b)
        local aStart = a:sub(1, #raw) == raw:upper()
        local bStart = b:sub(1, #raw) == raw:upper()
        if aStart ~= bStart then return aStart end
        return #a < #b
    end)
    for i, name in ipairs(found) do if i > 30 then break end makeCard(name, i) end
    results.CanvasSize = UDim2.new(0, 0, 0, #found * 50)
end)

RunService.Heartbeat:Connect(function()
    if not autoEnabled or Config.CurrentPage == "Settings" then return end
    for _, obj in ipairs(game:GetDescendants()) do
        if (obj:IsA("TextLabel") or obj:IsA("TextBox")) and obj.Parent ~= mainFrame and not obj:IsDescendantOf(mainFrame) then
            local t = obj.Text
            if (t:find("_") or t:find("-") or t:find("%.")) and #t > 1 then
                if searchBar.Text ~= t then searchBar.Text = t end
                break
            end
        end
    end
end)
