% to compile it:
% lilypond-book -f latex --output monroe monroe-latex.ly
% and then typeset the tex file in monroe/


\documentclass{article}
\usepackage[top=1in, bottom=1.25in, left=0.2in, right=0.2in]{geometry}

\begin{document}
  \noindent
  \lilypondfile[quote,noindent]{monroe.ly}

  %%%%%%%%%% scales
  This piece is in G Dorian. It is similar to the G minor penatonic scale, except that it has two additional notes: a 2nd and a 6th.\\

  \lilypondfile[quote,noindent]{../scales/dorian_vs_minor_penatonic.ly}

  %%%%%%%%%% Chords
  Some chords:\\%

  \lilypondfile[quote,noindent]{../chords/chords_version3.ly}
  
\end{document}
