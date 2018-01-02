f :: [Int] -> [Int]
f lst = [lst!!ind | ind <- [0..(-1 + length lst)], odd ind]

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata
