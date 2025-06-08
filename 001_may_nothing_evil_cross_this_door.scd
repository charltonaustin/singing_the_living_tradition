
(
var sopranoP =    [    4,    4,    4,   4,    0,   2,    4,    0,    7,    7,    7,   5,    2,   4,   0,   2,    2,   -1,    0,    2,   4,    4,   4,    0,  -3,   -5,    0,    2,    0];
var altoP =       [    0,    0,    0,   0,   -5,  -1,   -1,   -3,    0,    0,    0,   2,   -1,   0,  -5,  -5,   -5,         -5,   -5,  -5,   -5,  -5,   -8,  -7,   -8,   -3,   -1,   -5];
var tenorP =      [   -5,   -5,   -5,  -5,   -8,  -5,   -5,   -8,   -5,   -5,   -5,  -3,   -5,  -5, -12, -14,  -14,  -10,  -12,  -14, -12,  -12, -14,  -12, -12,  -12,   -9,   -5,   -9];
var bassP =       [  -12,  -12,  -12, -12,  -12, -17,  -21,  -15,   -9,   -9,   -9, -10,  -17, -12, -21, -17,  -17,  -20,  -21,  -22, -24,  -24, -21,  -15, -20,  -12,  -15,  -17,  -24];
var timingOne =  [ 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.75, 0.75];
var timingTwo =  [ 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25,        0.5, 0.25, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.75, 0.75];
var key = 4;

~soprano = Pbind(
	\note, Pser(sopranoP, sopranoP.size),
	\dur, Pser(timingOne, inf),
	\ctranspose, key;
);
~alto = Pbind(
	\note, Pser(altoP, altoP.size),
	\dur, Pser(timingTwo, inf),
	\ctranspose, key;
);
~tenor = Pbind(
	\note, Pser(tenorP, tenorP.size),
	\dur, Pser(timingOne, inf),
	\ctranspose, key;
);
~bass = Pbind(
	\note, Pser(bassP, bassP.size),
	\dur, Pser(timingOne, inf),
	\ctranspose, key;
);
)
(
var tempo = 28/60;
~soprano.play(TempoClock(tempo));
~alto.play(TempoClock(tempo));
~tenor.play(TempoClock(tempo));
~bass.play(TempoClock(tempo));
)
