(
 var soprano =    [    4,    4,    4,   4,    0,   2,    4,    0,    7,    7,    7,   5,    2,    4,   0];
 var alto =       [    0,    0,    0,   0,   -5,  -1,   -1,   -3,    0,    0,    0,   2,   -1,    0,  -5];
 var tenor =      [   -5,   -5,   -5,  -5,   -8,  -5,   -5,   -8,   -5,   -5,   -5,  -3,   -5,   -5, -12];
 var bass =       [  -12,  -12,  -12, -12,  -12, -17,  -21,  -15,   -9,   -9,   -9, -10,  -17, -12,  -21];
 var timingOne =  [ 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25];
 var timingTwo =  [ 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25];
 var key = 4;
 var tempo = 30/60;
 Pbind(
	\note, Pser(soprano, soprano.size),
    \dur, Pser(timingOne, inf),
   \ctranspose, key;
 ).play(TempoClock(tempo));
Pbind(
	\note, Pser(alto, alto.size),
    \dur, Pser(timingOne, inf),
   \ctranspose, key;
 ).play(TempoClock(tempo));
Pbind(
	\note, Pser(tenor, tenor.size),
    \dur, Pser(timingOne, inf),
   \ctranspose, key;
 ).play(TempoClock(tempo));
Pbind(
	\note, Pser(bass, bass.size),
    \dur, Pser(timingOne, inf),
   \ctranspose, key;
 ).play(TempoClock(tempo));
)

