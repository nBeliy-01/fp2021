rev line = do
    l <- line
    reverse l

fromKeyboard = do
    putStrLn "Input line:"
    line <- getLine
    let answerArray = rev [line]
    print answerArray

toFile = do
    putStrLn "Enter line:"
    line <- getLine
    let answerArray = rev [line]
    writeFile "fromKeyboardOutput.txt" (show answerArray)

toConsole = do
        line <- readFile "input.txt"
        let answerArray = rev [line]
        print(answerArray)

fromFileToFile = do
    line <- readFile "input.txt"
    let answerArray = rev [line]
    writeFile "fromFileOutput" (show answerArray)