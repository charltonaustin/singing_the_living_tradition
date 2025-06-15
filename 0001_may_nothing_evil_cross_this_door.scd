
(//                    1               2          3           4     5                6           7          8           9               10         11          12          13    14    15
var sopranoP =    [    9,   9,    9,   9,    5,   7,    9,    5,   12,   12,   12,  10,     7,   9,    5,   7,    7,    4,    5,    7,   9,    9,   9,    5,    2,    0,    5,    7,    5];
var altoP =       [    5,   5,    5,   5,    0,   4,    4,    2,    5,    5,    5,   7,     4,   5,    0,   0,    0,          0,    0,   0,    0,   0,   -3,   -2,    3,    2,    4,    0];
var tenorP =      [    0,   0,    0,   0,   -3,   0,    0,   -3,    0,    0,    0,   2,     0,   0,   -7,  -8,   -8,   -5,   -7,   -8,  -7,   -7, -12,   -7,   -7,   -7,   -3,    0,   -3];
var bassP =       [   -7,  -7,   -7,  -7,   -7,  -12,  -15,  -7,   -3,   -3,   -3,  -5,   -12,  -7,  -15, -12,  -12,  -14,  -15,  -17, -19,  -19, -15,  -10,  -14,   -7,  -10,  -12,  -19];
var timingOne =  [  0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25,  0.5, 0.25, 0.75, 0.75, 0.75];
var timingTwo =  [  0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25,        0.5, 0.25, 0.5, 0.25, 0.5, 0.25,  0.5, 0.25, 0.75, 0.75, 0.75];

~soprano = Pbind(
	\note, Pser(sopranoP, (sopranoP.size * 4)),
	\dur, Pser(timingOne, inf);
);
~alto = Pbind(
	\note, Pser(altoP, (altoP.size * 4)),
	\dur, Pser(timingTwo, inf);
);
~tenor = Pbind(
	\note, Pser(tenorP, (tenorP.size * 4)),
	\dur, Pser(timingOne, inf);
);
~bass = Pbind(
	\note, Pser(bassP, (bassP.size * 4)),
	\dur, Pser(timingOne, inf),
	\amp, 0.3;
);
)
(
var tempo = 28/60;
~soprano.play(TempoClock(tempo));
~alto.play(TempoClock(tempo));
~tenor.play(TempoClock(tempo));
~bass.play(TempoClock(tempo));
)
