import TestMod

main : IO ()
main 
    = do res <- ioAddThings 3 4
         printLn res
         printLn (addThings 3 4)
         printLn (runCallback (+) 3 4)

