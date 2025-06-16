(
~breakNT = {
	arg notesAndTimes;

	var notes = notesAndTimes.collect { |subArray| subArray[0] };
	var times = notesAndTimes.collect { |subArray| subArray[1] };
	[notes, times]
};

~createPart = {
	arg notesAndTimes, r;
	var notesAndTime = ~breakNT.value(notesAndTimes);
	Pbind(
	\note, Pser(notesAndTime[0], (notesAndTime[0].size * r)),
	\dur, Pser(notesAndTime[1], inf),
	\amp, 0.2;
);
};
)
(
var snt  = [
	/*1*/[[0, -3], 0.375], [0, 0.125], [2, 0.25], [[5, 2, -3], 0.25],
	/*2*/[7, 0.25], [9, 0.125], [10, 0.125], [12, 0.5],
	/*3*/[10, 0.375], [9, 0.125], [7, 0.25], [[9,4,0], 0.25],
	/*4*/[5, 0.25], [2, 0.25], [[-5,4], 0.5],
	/*5*/[5, 0.375], [7, 0.125], [9, 0.25], [5,0.125], [9, 0.125],
	/*6*/[[5, 10], 0.25], [12, 0.25], [14, 0.5],
	/*7*/[12, 0.25] , [9, 0.125], [7, 0.125], [5, 0.25], [0, 0.25],
	/*8*/[2, 0.25], [5, 0.25], [5, 0.5]
];

var r = 1;

~solo = ~createPart.value(snt, r);
~partTwo = Pbindf(
    Pseq([
	/*1*/(degree: Rest(), dur: 1),
	/*2*/(degree: [2,5],  dur: 0.5), (degree: [0,5], dur: 0.25),(degree: 9, dur: 0.25, amp: 0.05),
	/*3*/(degree: [2,5],  dur: 0.75), (degree: Rest(), dur: 0.25),
    /*4*/(degree: -3,     dur: 0.5), (degree: 2, dur: 0.25), (degree: 0, dur: 0.25),
	/*5*/(degree: 2, dur: 0.25), (degree: 0, dur: 0.5), (degree: 7, dur: 0.25),
	/*6*/(degree: Rest(), dur: 0.25), (degree: 10, dur: 0.125), (degree: 9, dur: 0.125), (degree: 12, dur: 0.125), (degree: 10, dur: 0.125), (degree: 9, dur: 0.125), (degree: 7, dur: 0.125),
	/*7*/(degree: 7, dur: 0.125), (degree: 5, dur: 0.125), (degree: 4, dur: 0.25), (degree: -3, dur: 0.125), (degree: -2, dur: 0.125), (degree: 0, dur: 0.25),
	/*8*/(degree: 0, dur: 0.25), (degree: -2, dur: 0.25), (degree:-5, dur: 0.25), (degree:-3, dur: 0.25)
	]);
);

~bass = Pbindf(
	Pseq([
		/*1*/(degree: -7, dur: 0.25),(degree: -8, dur: 0.25),(degree: -10, dur: 0.25),(degree: -12, dur: 0.25),
		/*2*/(degree: -13, dur: 0.25),(degree: -17, dur: 0.25),(degree: -15, dur: 0.25),(degree: -19, dur: 0.25),
		/*3*/(degree: -17, dur: 0.25),(degree: -15, dur: 0.25),(degree: -14, dur: 0.25),(degree: -12, dur: 0.25),
		/*4*/(degree: -10, dur: 0.25),(degree: -14, dur: 0.25),(degree: -12, dur: 0.5),
	]),
	\amp, 0.3;
);
)
(
var tempo = 26/60;
~solo.play(TempoClock(tempo));
~partTwo.play(TempoClock(tempo));
~bass.play(TempoClock(tempo));
)

