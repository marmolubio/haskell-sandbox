import System.IO
import Monad
import Char

main :: IO ()
main = do 
        hSetBuffering stdin NoBuffering
        hSetBuffering stdout NoBuffering
        hSetEcho stdin False 
        inputLoop []
          
inputLoop :: [Char] -> IO ()
inputLoop s = do 
        c <- getChar
        putChar c
        inputLoop (c:s)
