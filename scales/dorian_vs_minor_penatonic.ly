\version "2.24.1"

% G Dorian

gDorian = #'(
        (place-fret 6 3 "1" red)
        (place-fret 6 5 "2")
        (place-fret 6 6 "m3")
    
        (place-fret 5 3 "4")
        (place-fret 5 5 "5")
    
        (place-fret 4 2 "6")
        (place-fret 4 3 "m7")
        (place-fret 4 5 "1" red)
    
        (place-fret 3 2 "2")
        (place-fret 3 3 "m3")
        (place-fret 3 5 "4")
    
        (place-fret 2 3 "5")
        (place-fret 2 5 "6")
        (place-fret 2 6 "m7")

        (place-fret 1 3 "1" red)
        (place-fret 1 5 "2")
        (place-fret 1 6 "m3"))

gMinPen = #'(
        (place-fret 6 3 "1" red)
        (place-fret 6 6 "m3")
    
        (place-fret 5 3 "4")
        (place-fret 5 5 "5")
    
        (place-fret 4 3 "m7")
        (place-fret 4 5 "1" red)

        (place-fret 3 2 "" white)
        (place-fret 3 3 "m3")
        (place-fret 3 5 "4")
    
        (place-fret 2 3 "5")
        (place-fret 2 6 "m7")

        (place-fret 1 3 "1" red)
        (place-fret 1 6 "m3"))

#(define-markup-command (my-scale layout props scaleName scaleLst) (markup? scheme?)
  "Draw a scale"
  (interpret-markup layout props
   (markup #:override '(fret-diagram-details . ((finger-code . in-dot)
						(number-type . arabic)
						(dot-radius . 0.3)
						(string-label-font-mag . 0.3)))
            #:override '(size . 2)
            #:center-column (
              scaleName
	      #:fret-diagram-verbose scaleLst
	    )  
	    #:hspace 3)))

\markup {
  \my-scale "G Dorian" \gDorian
  \my-scale "G Minor Penatonic" \gMinPen  
}