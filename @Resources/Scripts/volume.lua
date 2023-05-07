function Initialize()
    msVolume = SKIN:GetMeasure("MeasureVolume")
end

function Update()
    VolumeLevel = msVolume:GetValue()
    if (VolumeLevel >= 60) then
        SKIN:Bang('!SetOption VolumeButton Text 󰕾')
    elseif (VolumeLevel >= 20) then
        SKIN:Bang('!SetOption VolumeButton Text 󰖀')
    elseif (VolumeLevel > 0) then
        SKIN:Bang('!SetOption VolumeButton Text 󰕿')
    else
        SKIN:Bang('!SetOption VolumeButton Text 󰖁')
    end
    SKIN:Bang('!Refresh VolumeButton')
    return VolumeLevel
end