function Initialize()
    msWiFi = SKIN:GetMeasure("MeasureInternetQuality")
end

function Update()
    WiFiLevel = msWiFi:GetValue()
    if (WiFiLevel >= 80) then
        SKIN:Bang('!SetOption WiFiIcon Text 󰤨')
    elseif (WiFiLevel >= 60) then
        SKIN:Bang('!SetOption WiFiIcon Text 󰤥')
    elseif (WiFiLevel >= 40) then
        SKIN:Bang('!SetOption WiFiIcon Text 󰤢')
    elseif (WiFiLevel >= 20) then
        SKIN:Bang('!SetOption WiFiIcon Text 󰤟')
    elseif (WiFiLevel > 0) then
        SKIN:Bang('!SetOption WiFiIcon Text 󰤯')
    else
        SKIN:Bang('!SetOption WiFiIcon Text 󰤫')
    end
    SKIN:Bang('!Refresh WiFiIcon')
    return WiFiLevel
end