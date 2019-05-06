debImport "-f" "filelist"
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiWindowWorkMode -win $_Verdi_1 -hardwareDebug
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "128" "69" "900" "701"
verdiWindowResize -win $_Verdi_1 "128" "69" "900" "736"
verdiWindowResize -win $_Verdi_1 "128" "69" "900" "744"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/IC/project/4bit_count_async_reset/sim/tb.fsdb}
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "reset_n" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "reset_n" -win $_nTrace1
srcSelect -signal "cnt" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 641.043724 2143.935120
wvZoom -win $_nWave2 910.249940 1234.569240
wvZoom -win $_nWave2 1008.140391 1071.723442
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 944.602181 1174.900169
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave2 980.657296 1125.852219
wvSetCursor -win $_nWave2 1004.412742 -snap {("G1" 2)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debExit
