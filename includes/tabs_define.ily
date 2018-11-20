\version "2.19.82"

% Kinda works like the template pattern or an abstract class 
% - when this file is included, a \bass must already be defined
%
tabs =
\new TabStaff \with {
  stringTunings = #bass-tuning
} {
  \clef moderntab
  \set TabStaff.restrainOpenStrings = ##t
  \bass
}