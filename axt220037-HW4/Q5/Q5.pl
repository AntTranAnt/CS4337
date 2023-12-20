%Anthony_Tran
%axt220037
%CS_4337_503

%count rules
county(grayson)
county(denton)
county(collin)
county(hunt)
county(parker)
county(tarrant)
county(dallas)
county(kaufman)
county(hood)
county(johnson)
county(ellis)
county(rockwall)
county(hood)

%adjacent rules
adjacent(grayson, denton, collin)
adjacent(denton, tarrant, dallas, collin)
adjacent(collin, grayson, denton, hunt, rockwall, dallas)
adjacent(hunt, collin, rockwall, kaufman)
adjacent(dallas, denton, collin, hunt, rockwall, tarrant, kaufman, ellis)
adjacent(tarrant, parker, johnson, denton, dallas, ellis)
adjacent(parker, hood, johnson, tarrant)
adjacent(hood, parker, johnson)
adjacent(johnson, hood, parker, tarrant, ellis)
adjacent(ellis, johnson, tarrant, dallas, kaufman)