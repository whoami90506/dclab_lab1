wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/team06/lab1/sim/Lab1_test.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Top_test"
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut/top0"
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
wvResizeWindow -win $_nWave1 71 30 1849 1050
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Top_test"
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut"
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut/top0"
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut/deb0"
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 25)}
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
{/Top_test/dut/deb0/counter_r\[2:0\]} \
{/Top_test/dut/deb0/counter_w\[2:0\]} \
{/Top_test/dut/deb0/i_clk} \
{/Top_test/dut/deb0/i_in} \
{/Top_test/dut/deb0/i_rst} \
{/Top_test/dut/deb0/neg_r} \
{/Top_test/dut/deb0/neg_w} \
{/Top_test/dut/deb0/o_debounced} \
{/Top_test/dut/deb0/o_debounced_r} \
{/Top_test/dut/deb0/o_debounced_w} \
{/Top_test/dut/deb0/o_neg} \
{/Top_test/dut/deb0/o_pos} \
{/Top_test/dut/deb0/pos_r} \
{/Top_test/dut/deb0/pos_w} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 16 17 18 19 20 21 22 23 24 25 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 25)}
wvGetSignalClose -win $_nWave1
wvMoveSelected -win $_nWave1 -group "G2"
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 3816330.766533 4081803.944117
wvZoom -win $_nWave1 3893026.675245 3921170.452906
wvZoom -win $_nWave1 3899813.984303 3901331.968591
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 2599002.617099 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 2564310.135517 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 3446743.768831 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 3628879.297136 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 5289566.579386 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 7884323.447303 -snap {("G1" 1)}
wvZoom -win $_nWave1 7869386.406622 7904078.888204
wvZoom -win $_nWave1 7883603.226414 7886872.449725
wvSetCursor -win $_nWave1 7884460.561478 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut/top0/random"
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 14)}
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
{/Top_test/dut/deb0/counter_r\[2:0\]} \
{/Top_test/dut/deb0/counter_w\[2:0\]} \
{/Top_test/dut/deb0/i_clk} \
{/Top_test/dut/deb0/i_in} \
{/Top_test/dut/deb0/i_rst} \
{/Top_test/dut/deb0/neg_r} \
{/Top_test/dut/deb0/neg_w} \
{/Top_test/dut/deb0/o_debounced} \
{/Top_test/dut/deb0/o_debounced_r} \
{/Top_test/dut/deb0/o_debounced_w} \
{/Top_test/dut/deb0/o_neg} \
{/Top_test/dut/deb0/o_pos} \
{/Top_test/dut/deb0/pos_r} \
{/Top_test/dut/top0/random/o_number\[3:0\]} \
{/Top_test/dut/deb0/pos_w} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSetPosition -win $_nWave1 {("G2" 14)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSetRadix -win $_nWave1 -format UDec
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
wvZoom -win $_nWave1 2249776.926022 2370152.444204
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 2151603.340052 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 2167424.548889 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 2196380.346195 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 2265635.449030 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 2300561.513822 -snap {("G1" 4)}
wvZoom -win $_nWave1 2297277.866705 2312502.048793
wvSetCursor -win $_nWave1 2350953.726797 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 2400979.747327 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 2450968.014151 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 2500975.629750 -snap {("G1" 10)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1386920.156755 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 1299935.617307 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 1386920.156755 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 1309600.566135 -snap {("G2" 14)}
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvZoom -win $_nWave1 1217783.552273 1575386.658893
wvSetCursor -win $_nWave1 1400021.465256 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 1398026.159639 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 1392483.644038 -snap {("G2" 14)}
wvZoom -win $_nWave1 1391596.841541 1458772.130634
wvZoom -win $_nWave1 1398301.876596 1405673.250539
wvResizeWindow -win $_nWave1 244 143 1280 657
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 71 30 1849 1050
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 2356207.354588 2662724.895255
wvZoom -win $_nWave1 2388132.306127 2491318.310207
wvZoom -win $_nWave1 2397472.142825 2404061.205702
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 2384266.823601 2445966.269163
wvZoom -win $_nWave1 2399567.368068 2401977.203821
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 15)}
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
{/Top_test/dut/deb0/counter_r\[2:0\]} \
{/Top_test/dut/deb0/counter_w\[2:0\]} \
{/Top_test/dut/deb0/i_clk} \
{/Top_test/dut/deb0/i_in} \
{/Top_test/dut/deb0/i_rst} \
{/Top_test/dut/deb0/neg_r} \
{/Top_test/dut/deb0/neg_w} \
{/Top_test/dut/deb0/o_debounced} \
{/Top_test/dut/deb0/o_debounced_r} \
{/Top_test/dut/deb0/o_debounced_w} \
{/Top_test/dut/deb0/o_neg} \
{/Top_test/dut/deb0/o_pos} \
{/Top_test/dut/deb0/pos_r} \
{/Top_test/dut/top0/random/o_number\[3:0\]} \
{/Top_test/dut/top0/random/number\[7:0\]} \
{/Top_test/dut/deb0/pos_w} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSetPosition -win $_nWave1 {("G2" 15)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Top_test"
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut"
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut/top0"
wvGetSignalSetScope -win $_nWave1 "/Top_test/dut/top0/random"
wvSetPosition -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 19)}
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
{/Top_test/dut/deb0/counter_r\[2:0\]} \
{/Top_test/dut/deb0/counter_w\[2:0\]} \
{/Top_test/dut/deb0/i_clk} \
{/Top_test/dut/deb0/i_in} \
{/Top_test/dut/deb0/i_rst} \
{/Top_test/dut/deb0/neg_r} \
{/Top_test/dut/deb0/neg_w} \
{/Top_test/dut/deb0/o_debounced} \
{/Top_test/dut/deb0/o_debounced_r} \
{/Top_test/dut/deb0/o_debounced_w} \
{/Top_test/dut/deb0/o_neg} \
{/Top_test/dut/deb0/o_pos} \
{/Top_test/dut/deb0/pos_r} \
{/Top_test/dut/top0/random/o_number\[3:0\]} \
{/Top_test/dut/top0/random/number\[7:0\]} \
{/Top_test/dut/top0/random/n_number\[7:0\]} \
{/Top_test/dut/top0/random/number_ans\[7:0\]} \
{/Top_test/dut/top0/random/number_mul\[7:0\]} \
{/Top_test/dut/top0/random/number_shift\[7:0\]} \
{/Top_test/dut/deb0/pos_w} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 16 17 18 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 16 17 18 19 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 2400027.522693 -snap {("G2" 15)}
wvSetOptions -win $_nWave1 -fixedDelta on
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2400855.203418 -snap {("G2" 17)}
wvSetCursor -win $_nWave1 2401349.720240 -snap {("G2" 16)}
wvExit
