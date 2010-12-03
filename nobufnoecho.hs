import System.IO
import Monad
import Char

main :: IO ()
main = do 
        hSetBuffering stdin NoBuffering
        hSetBuffering stdout NoBuffering
        hSetEcho stdin False 
        putStrLn "Type 'e' to echo, 'q' to quit."
        inputLoop []
          
inputLoop :: [Char] -> IO ()
inputLoop s = do 
        c <- getChar
        case c of
                'q' -> do
                                putStrLn ""
                                return ()
                'e' -> do
                                putStr (reverse s)
                                inputLoop []
                _   -> inputLoop (c:s)
