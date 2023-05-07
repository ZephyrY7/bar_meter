;Time
[MeasureTime]
Measure=Time
Format=%a %b %d %H:%M

;Music
[MeasurePlayer]
Measure=NowPlaying
PlayerName=#Player#
PlayerType=Title
DisableLeadingZero=0
Substitute="":""

[MeasureArtist]
Measure=NowPlaying
PlayerName=#Player#
PlayerType=Artist
Substitute="":""

[MeasureState]
Measure=NowPlaying
PlayerName=#Player#
PlayerType=State
Substitute="0":"","1":"","2":""

;Power
[PowerPercent]
Measure=Plugin
Plugin=PowerPlugin.dll
PowerState=PERCENT

[PowerSource]
Measure=Plugin
Plugin=PowerPlugin.dll
PowerState=ACLINE

;Volume
[MeasureVolume]
Measure=Plugin
Plugin=Win7AudioPlugin

[MeasureVolumePercent]
Measure=Calc
Formula=MeasureVolume
RegExpSubstitute=1
Substitute="^-1$":"0"

;Internet
[MeasureSSID]
Measure=WiFiStatus
WiFiInfoType=SSID
Substitute="-1":"No Internet"

[MeasureInternetQuality]
Measure=WiFiStatus
WiFiInfoType=Quality