   read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
   filter=:{{y rplc 'Valve ';'_';' has flow rate=';'_';'; tunnels lead to valves ';'_';'; tunnel leads to valve ';'_';', ';'_'}}
   ];._1 each filter each cutopen read 'd16t1'
