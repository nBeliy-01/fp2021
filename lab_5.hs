-- Лабораторна робота №5
-- Студента групи АнД - 31
-- Білухи Назара Романовича
-- Варіант № 1
-- Мета: Ознайомитись з модульною органiзацiєю програм та засобами введеннявиведення. Набути досвiду компiляцiї Haskell-програм.

-- Завдання
-- 5.2.1. Реалiзувати та скомпiлювати одну з програм, розроблених у лабораторнiй роботi No 3 для Вашого варiанта з введенням даних: 
-- а) з клавiатури, 
-- б) з файлу та виведенням результатiв: 
-- в) на екран, 
-- г) у файл.

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

-- ghci
-- :l lab_5.hs
-- fromKeyboard 
-- input data -- ghci> abcdef
-- output data -- ghci>fedcba
-- toFile 
-- input data -- ghci> abcdef
-- toConsole
-- "54321gfedcba"
-- fromFileToFile

-- Висновок:
-- В ході виконання лабораторної роботи було розглянуто введення даних з клавіатури та файлу,
-- виведено результати на екран та записано у файли. 