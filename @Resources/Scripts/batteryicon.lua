function Initialize()
    msPowerPercent = SKIN:GetMeasure("PowerPercent")
    msPowerSource = SKIN:GetMeasure("PowerSource")
end

function Update()
	iPowerPercent = msPowerPercent:GetValue()
	sPowerSource = msPowerSource:GetStringValue()
    if (sPowerSource == '1') then
        if (iPowerPercent > 80) then
            SKIN:Bang('!SetOption PowerMeter Text 󱊦')
        elseif (iPowerPercent > 50) then
            SKIN:Bang('!SetOption PowerMeter Text 󱊥')
        elseif (iPowerPercent > 20) then
            SKIN:Bang('!SetOption PowerMeter Text 󱊤')
        elseif (iPowerPercent >= 0) then
            SKIN:Bang('!SetOption PowerMeter Text 󰢟')
        else
            SKIN:Bang('!SetOption PowerMeter Text 󱃍')
        end
    elseif (sPowerSource == '0') then
        if (iPowerPercent > 80) then
            SKIN:Bang('!SetOption PowerMeter Text 󱊣')
        elseif (iPowerPercent > 50) then
            SKIN:Bang('!SetOption PowerMeter Text 󱊢')
        elseif (iPowerPercent > 20) then
            SKIN:Bang('!SetOption PowerMeter Text 󱊡')
        elseif (iPowerPercent > 0) then
            SKIN:Bang('!SetOption PowerMeter Text 󰂎')
        else
            SKIN:Bang('!SetOption PowerMeter Text 󱃍')
        end
    end
    SKIN:Bang('!Refresh PowerMeter')
    return iPowerPercent
end
