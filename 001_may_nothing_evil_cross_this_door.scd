
(
var sopranoP =    [    9,   9,    9,   9,    5,   7,    9,    5,   12,   12,   12,  10,    7,   9,    5,   7,    7,    4,    5,    7,   9,    9,   9,    5,   2,    0,    5,    7,    5];
var altoP =       [    5,   5,    5,   5,    0,   4,    4,    2,    5,    5,    5,   7,    4,   5,    0,   0,    0,          0,    0,   0,    0,   0,   -3,  -2,   -3,    2,    4,    0];
var tenorP =      [    0,   0,   -5,  -5,   -9,  -5,   -5,   -9,   -5,   -5,   -5,  -3,   -5,  -5,  -12, -14,  -14,  -10,  -12,  -14, -12,  -12, -14,  -12, -12,  -12,   -9,   -5,   -9];
var bassP =       [  -12, -12,  -12, -12,  -12, -17,  -21,  -15,   -9,   -9,   -9, -10,  -17, -12,  -21, -17,  -17,  -20,  -21,  -22, -24,  -24, -21,  -15, -20,  -12,  -15,  -17,  -24];
var timingOne =  [ 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.75, 0.75];
var timingTwo =  [ 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25,        0.5, 0.25, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.75, 0.75];

~soprano = Pbind(
	\note, Pser(sopranoP, sopranoP.size),
	\dur, Pser(timingOne, inf);
);
~alto = Pbind(
	\note, Pser(altoP, altoP.size),
	\dur, Pser(timingTwo, inf);
);
~tenor = Pbind(
	\note, Pser(tenorP, tenorP.size),
	\dur, Pser(timingOne, inf);
);
~bass = Pbind(
	\note, Pser(bassP, bassP.size),
	\dur, Pser(timingOne, inf);
);
)
(
var tempo = 28/60;
~soprano.play(TempoClock(tempo));
~alto.play(TempoClock(tempo));
// ~tenor.play(TempoClock(tempo));
// ~bass.play(TempoClock(tempo));
)
