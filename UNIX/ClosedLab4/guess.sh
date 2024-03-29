#!/bin/tcsh -f

echo "guess the number" #output
set answer=$< #set answer to input
set goal=`tr -dc A-Za-z0-9 < /dev/urandom | od -d | head -c 10 | tr -d 0 | tr -d ' '` #set goal to random number

set count=1 #counter
while ( $answer != $goal ) #while the answer is not the randomly generated number
  if ( $answer < $goal ) then #if the answer is less than the goal
    echo "too small"
  else
    echo "too large" #if the answer if is larger than the goal
  endif
  @ count ++ #increment counter
  set answer = $< # get the next guess
end

echo "correct!" #output correct
echo "using $count rounds" #How many guesses did you try?
