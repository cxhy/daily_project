verdiWindowResize -win $_Verdi_1 "222" "25" "901" "700"
verdiWindowResize -win $_Verdi_1 "222" "25" "1284" "784"
debImport "-f" "filelist"
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiWindowWorkMode -win $_Verdi_1 -hardwareDebug
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/IC/project/led/sim/tb.fsdb}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "reset_n" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 4805123.513266 -snap {("G1" 2)}
wvZoom -win $_nWave2 92406.221409 5636779.505947
wvZoom -win $_nWave2 675757.481905 2314213.630949
wvZoom -win $_nWave2 900614.226970 1149455.691510
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "tb.x_led" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.x_led" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "us_cnt\[4:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 790464.377750 1595499.527439
wvZoom -win $_nWave2 962077.543237 1237542.452646
srcDeselectAll -win $_nTrace1
srcSelect -signal "us" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 596798.632644 4355017.049026
wvZoom -win $_nWave2 916573.850141 2443242.630446
wvZoom -win $_nWave2 1068821.697399 1631719.701482
wvZoom -win $_nWave2 1163582.203117 1324263.060642
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetRadix -win $_nWave2 -format UDec {("G1" 3)}
wvSetCursor -win $_nWave2 1006650.075572 -snap {("G1" 3)}
wvSetMarker -win $_nWave2 1015000.000000
wvShowDeltaFreq -win $_nWave2 -freq
wvSetMarker -win $_nWave2 1025000.000000
wvSetMarker -win $_nWave2 1025000.000000
wvSetMarker -win $_nWave2 1035000.000000
wvSetCursor -win $_nWave2 1245980.758142 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 1022527.049600 -snap {("G1" 1)}
wvSetMarker -win $_nWave2 1044000.000000
