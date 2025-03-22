\version "2.24.4"

\header {
    title = "Time After Time guitar solo"
}

\layout {
    % Do not indent the first line
    indent = 0\cm
    line-width =  16\cm
    ragged-right = ##f
}


\markup \vspace #2

% Define a "blue" macro which returns a music expression
bl =
#(define-music-function
    (note)
    (ly:music?)
    #{
        \tweak color #blue #note
    #})

<<
  \chords {
      f1
      g1
      e1:m
      f1
      
      f1
      g1
      e1:m
      f1
  }
  
  \relative c {
      % Measure #1: FAC
      r8
      \bl f'8_\markup {"/"}
      \bl c'8
      \bl c'4._\markup {"/"}
      b4_\markup {"\\"}

      % Measure #2: GBD
      r4
      \bl d,8_\markup {"\\"}
      a'4._\markup {"/"}
      \bl g4_\markup {"\\"}

      % Measure #3: EGB
      r8
      \bl e,8_\markup {"/"}
      \bl g8
      a'4_\markup {"/"}
      \bl g8_\markup {"/"}
      f8
      \bl e8

      % Measure #4: FAC
      d8    e8    \bl c2.
      \break

      % Measure #5: FAC
      r8    \bl f,8    \bl c'8    \bl c'4.    b4

      % Measure #6: GBD
      r8
      \bl g,8_\markup {"/"}
      \bl b8
      a'4._\markup {"/"}
      \bl g4_\markup {"\\"}

      % Measure #7: EGB
      r8    \bl e,8    \bl g8    a'4    \bl g8    f8    \bl e8

      % Measure #8: FAC
      d8
      e8
      \bl c4.
      d8_\markup {"/"}
      e8_\markup {"\\"}
      \bl c8_\markup {"/"}
  }
  
>>