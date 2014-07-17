import System.IO 

main = do
	handle <- openFile "song.txt" ReadMode
	contents <- hGetContents handle
	putStr contents 
	hClose handle