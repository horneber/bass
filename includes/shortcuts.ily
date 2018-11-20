%% shortcuts
%%
barbara = \bar "||"

% define a shortcut to have easier italic marks
italMark =
#(define-music-function
  (parser location text)
  (string?)
  #{
    \mark \markup{ \tiny \italic #text }
  #})
