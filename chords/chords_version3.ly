\version "2.24.1"

#(ly:set-option 'crop #t)
#(ly:set-option 'resolution 300)

% G/B
chordA = #'(
    (mute 6)
    (place-fret 5 2 "M3")
    (place-fret 4 0 "P5" white)
    (place-fret 3 0 "R" white)
    (place-fret 2 0 "P5" white)
    (place-fret 1 3 "R" red) 
  )

% C/Bb
chordB = #'(
    (mute 6)
    (place-fret 5 1 "m7")
    (place-fret 4 2 "M3")
    (place-fret 3 0 "P5" white)
    (place-fret 2 1 "R" red)
    (place-fret 1 0 "M3" white) 
  )

#(define-markup-command (my-chord layout props chordName chordLst) (markup? scheme?)
  "Draw a chord"
  (interpret-markup layout props
    (markup #:override '(fret-diagram-details . ((finger-code . below-string)
						 (dot-radius . 0.3)
						 (string-label-font-mag . 0.3)))
            #:override '(size . 2)
            #:center-column (
              chordName
	      #:fret-diagram-verbose chordLst
	    )  
	    #:hspace 3)))

\markup {
  \my-chord "G/B"  \chordA
  \my-chord "C/B♭" \chordB
}


