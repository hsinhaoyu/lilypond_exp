\version "2.24.1"
\language "english"

\header {
  title = "Monroe"
  composer = "Bill Frisell"
}

gtr = \relative {
  % do not display string number 
  \override StringNumber.#'transparent = ##t
  \key g \major
  \time 3/4

  
  \partial 4 f'4\2

  \repeat volta 2 {
    f4\2 e4\2 d4\2
    c4\3 b-flat4\3
    \override NoteHead.color = #red
    g\4
    \override NoteHead.color = #black
    
    c4\3 d2\3~
    d2.\3~ \break
    d2.\3~
				% section
    d4\3 r4 f4\2
    f4\2 e4\2 d4\2
    c4\3 b-flat4\3 d,4\5
    e4\4 b-flat'2\3~ \break
    b-flat2.\3

    \override NoteHead.color = #red
    g2.~\4
    \override NoteHead.color = #black    
    g2.~ g2.~ g2. \break

				% section 2
    d'4\2 e4\2 c4\3
    b4\3 g4\4 d4\5
    e4\4 c'2\3~
    c2.~ c2.~ \break
				% section 3
    c4\3 r4 b4\3
    b-flat4 d,4\5 d-sharp4\4
    e4 b-flat'4 g4\4~ 
    g2.\4~ g2.\4 \break
    g2.\4~ g2.\4
  }

  \repeat volta 2 {
    g'4\1 g4\1 g4\1
    \tuplet 4/3 {f-sharp4\1 e4\2 d4\2 c4\3}
    b-flat4 g2\4~ \break
    g2.\4~ g2.~ g2 r4
  }

  \repeat volta 2 {
    e'4\2 e4\2 e4\2
    d4\2 c4.\3 b-flat8\3 \break
    g2.\4~ g2.\4~ g2.\4~ g2.\4~
  }

}

chrd = {
  \set noChordSymbol = ""
				% I am not sure why we need chordmode
				% But without it, slash chord doesn't work
  \chordmode {
    \partial 8 r4
				% first repeated block
    g2. g2.
    c2. c2. c2. c2.
  
    g2. g2.
    c2. c2.
    g2. g2. g2. g2.
  
    g2. g2.
    c2. c2. c2.

    c2. c2. c2.
    g2. g2. g2. g2.
				% second repeated block
    c2. c2. g2./b
    g2./b g2./b g2./b
				% third repeated block
    c2./b-flat c2./b-flat
    g2. g2. g2. g2.
    
  }
}


\score {
  \new StaffGroup
  <<
    \new ChordNames {
      % only print a chord if the chord changes
      \set chordChanges = ##t
      << \chrd >>
    }
    
    \new Staff {
      \clef "treble_8"
      \textMark "G Dorian"
      << \gtr >>
    }
    
    \new TabStaff \with { stringTunings = #guitar-tuning }
      \gtr
  >>
}