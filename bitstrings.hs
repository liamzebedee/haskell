-- Based off of the code golf mentioned here <http://codegolf.stackexchange.com/questions/51733/bitstring-physics>
-- This implements the idea of a Bitstring universe, embodied in the works of Bitstring physics and the combinatorial hierachy



-- Utils
import Random (randomRIO)
import Data.Bits 

pickRandomElement :: [a] -> IO a
pickRandomElement xs = randomRIO (0, length xs - 1) >>= return . (xs !!)


-- Main
Bitstrings L []

simulate :: Array -> Array
simulate 0 = [10,11]
simulate bitstrings = do
	A <- pickRandomElement bitstrings
	B <- pickRandomElement bitstrings

	if A == B 
		then do
			
	    for each C in L:
	        append a random bit to C
	else append the bitwise XOR of A and  B to L


main :: (String -> String) -> IO ()
main = map simulate [0..30]