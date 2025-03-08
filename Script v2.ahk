F12::
{
	SetKeyDelay, 0
	MouseMove 170, 70, 0 ; Move to BPM Set
	Send {Click}
	Send 140 ; Set BPM to 140
	Send {Enter}

	MouseMove 740, 100, 0 ; Move to default audio tracks
	Send {Click}
	Send {Del 2} ; Deletes them
	MouseMove 550, 100, 0 ; Move to first track
	Send {Click}

	Send {Tab} ; Set to Layout View
	Send ^2 ; Sets the grid wider

	MouseMove 80, 180, 0 ; Selects Yellow Category
	Send {Click}
	MouseMove 300, 180, 0 ; Opens Steel Drum Sample
	Send {Click 2}
	MouseMove 510, 180, 0 ; Moves to first bar
	Send {Click 2} ; Creates new midi clip

	MouseMove 430, 900, 0 ; Moves into midi clip
	Send {Click}

	; Sends sequence to play steel drums for 2 bars
	SetKeyDelay, 25
	Send ^2 ; Sets the grid wider
	Send {k down}
	Send {Right 3}
	Send {k up}

	Send {g down}
	Send {Right 3}
	Send {g up}

	Send {y down}
	Send {Right 4}
	Send {y up}

	Send {k down}
	Send {Right 3}
	Send {k up}

	Send {g down}
	Send {Right 3}
	Send {g up}

	; Selects the clip, duplicates, then merges clips
	SetKeyDelay, 10
	MouseMove 510, 160, 0
	Send {Click}
	Send ^d
	Send ^a
	Send ^j
	Send ^2 ; Widens grid
	MouseMove 1500, 275, 0 ; Gets out of selection
	Send {Click}

	SetKeyDelay, 50
	MouseMove 1666, 275, 0 ; Selects second track
	Send {Click}
	MouseMove 120, 160, 0 ; Selects electric piano
	Send {Click 2}
	
	MouseMove 120, 975, 0 ; Selects release
	Send {Click}
	Send 6000
	Send {Enter}

	MouseMove 510, 275, 0 ; Moves to first bar
	Send {Click 2}

	MouseMove 430, 900, 0 ; Moves into midi clip
	Send {Click}

	Send {Ctrl down} ; Widens grid
	Send {2 3}
	Send {Ctrl up}
	Send {Left}

	; Creates a single C1 note
	Send {a down}
	Send {Right}
	Send {a up}
	Send ^a
	Send +{Down}

	SetKeyDelay, 30
	Send ^+T ; Creates a new MIDI Track

	MouseMove 70, 200, 0 ; Selects Green Color
	Send {Click}
	MouseMove 200, 160, 0 ; Selects Drum Rack
	Send {Click 2}
	Sleep 500

	Send ^a ; Selects all except drum rack in folder, place on C2
	Send {Ctrl Down}
	Send {Click}
	Send {Ctrl Up}
	MouseMove 120, 180, 0
	Send {Click Down}
	MouseMove 80, 850, 0
	Send {Click Up}

	MouseMove 510, 375, 0 ; Moves to first bar
	Send {Click 2}

	MouseMove 450, 880, 0 ; Moves into midi clip
	Send {Click}

	Send b ; Turns on pencil mode
	Send ^2 ; Widen grid

	; Plots Kick, Snap, Clav
	MouseMove 455, 805, 0
	Send {Click}
	MouseMove 630, 760, 0
	Send {Click}
	MouseMove 730, 805, 0
	Send {Click}
	MouseMove 825, 830, 0
	Send {Click}
	MouseMove 920, 805, 0
	Send {Click}
	MouseMove 1020, 760, 0
	Send {Click}
	MouseMove 1020, 830, 0
	Send {Click}
	MouseMove 1050, 805, 0
	Send {Click}
	MouseMove 1100, 830, 0
	Send {Click}

	; Plots Hats
	MouseMove 444, 780, 0 ; Moves to start of Hats
	Send {click down}
	MouseMove 870, 780, 0 ; move to end of 8th notes
	Send {click up}
	Send ^1 ; Narrows Grid
	MouseMove 905, 780, 0 ; move to start of 16th notes
	Send {click down}
	MouseMove 1162, 780, 0 ; move to end of 16th notes
	Send {click up}

	; Duplicates
	Send {Ctrl Down}
	Send ad2
	Send {Ctrl Up}

	;Plots hits
	MouseMove 450, 710, 0
	Send {Click}
	MouseMove 1520, 740, 0
	Send {Click}

	Send b

	; Selects all, duplicates to fill	
	MouseMove 525, 475, 0
	Send {Click 2}
	Send {Ctrl down}
	Send addddd
	Send {ctrl up}
	Send {Click}

	; Removes hats, kicks, clavs from first 4 bars
	Send {Shift Down}
	MouseMove 420, 780, 0 ; Hats
	Send {Click}
	MouseMove 420, 810, 0 ; Kick
	Send {Click}
	MouseMove 420, 840, 0 ; Clav
	Send {Click}
	Send {Del}
	Send {Shift Up}

	MouseMove 525, 335, 0
	Send {Click}
	Send ^d

	; Removes hats, clavs from next 2 bars; removes kicks too early
	MouseMove 650, 335, 0
	Send {Click}
	MouseMove 420, 780, 0 ; Hats
	Send {Click}
	Send {Del}
	MouseMove 970, 811, 0
	Send {Click Down}
	MouseMove 422, 811, 0
	Send {Click Up}
	Send {Del}

	; Removes hats from next 2 bars
	MouseMove 720, 335, 0
	Send {Click}
	MouseMove 420, 780, 0 ; Hats
	Send {Click}
	Send {Del}

	; Removes kicks and clavs from last 4 bars
	MouseMove 777, 335, 0
	Send {Click}
	Send {Shift Down}
	MouseMove 420, 810, 0 ; Kick
	Send {Click}
	MouseMove 420, 840, 0 ; Clav
	Send {Click}
	Send {Del}
	Send {Shift Up}

	MouseMove 777, 335, 0
	Send {Click}
	Send ^d

	; Play
	MouseMove 956, 471, 0
	Send {Click}
	Send ^a
	Send {Space}
}