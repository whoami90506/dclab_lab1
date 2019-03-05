wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/team06/lab1/sim/Lab1_test.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Top_test"
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Top_test/dut/top0/count\[30:0\]} \
{/Top_test/dut/top0/i_clk} \
{/Top_test/dut/top0/i_rst} \
{/Top_test/dut/top0/i_start} \
{/Top_test/dut/top0/n_show_num\[3:0\]} \
{/Top_test/dut/top0/next_count\[30:0\]} \
{/Top_test/dut/top0/next_state\[1:0\]} \
{/Top_test/dut/top0/num\[3:0\]} \
{/Top_test/dut/top0/o_random_out\[3:0\]} \
{/Top_test/dut/top0/show_num\[3:0\]} \
{/Top_test/dut/top0/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 1887639.575139 1949134.915406
wvZoom -win $_nWave1 1899382.020770 1900640.139944
wvSetCursor -win $_nWave1 1899938.151564 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 1900048.129743 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 1900151.088039 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 1899955.311279 -snap {("G1" 8)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Top_test"
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut"
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut/top0"
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut/top0"
wvOpenFile -win $_nWave1 {/home/team06/chengdelin/dclab_lab1/sim/Lab1_test.fsdb}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 2775876.092372 -snap {("G1" 9)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Top_test"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Top_test/dut/top0/count\[29:0\]} \
{/Top_test/dut/top0/i_clk} \
{/Top_test/dut/top0/i_rst} \
{/Top_test/dut/top0/i_start} \
{/Top_test/dut/top0/n_count\[29:0\]} \
{/Top_test/dut/top0/n_num\[3:0\]} \
{/Top_test/dut/top0/n_run} \
{/Top_test/dut/top0/num\[3:0\]} \
{/Top_test/dut/top0/o_ramdom_out} \
{/Top_test/dut/top0/o_random_out\[3:0\]} \
{/Top_test/dut/top0/random_num\[3:0\]} \
{/Top_test/dut/top0/run} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 4075792.609432 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 3123365.914982 3290244.096488
wvZoom -win $_nWave1 3199511.198049 3203028.779060
wvSetCursor -win $_nWave1 3200856.732756 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 3201236.186628 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1900015.367899 -snap {("G1" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 3052062.905957 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 2949060.806570 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 10129377.188517 10442012.286928
wvZoom -win $_nWave1 10294513.644707 10301878.885711
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvExit
