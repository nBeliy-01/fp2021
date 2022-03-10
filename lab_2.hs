-- Лабораторна робота №1
-- Студента групи АнД - 31
-- Білухи Назара Романовича
-- Варіант № 1
-- Мета: ознайомитись з основними типами мови. Ознайомитись зi структурою та
-- функцiями Glasgow Haskell Compiller. Набути навичок роботи з iнтерпретатором
-- ghci та визначення найпростiших функцiй.

-- Завдання № 1
-- Знайти останнiй елемент списку.
-- last' :: [x] -> x
-- last' [ ] = error "list is empty"
-- last' [х] = х
-- last' (_:xs) = last' xs


--Завдання № 2
-- Видалити зi списку елементи з i-го по k-й включно, напр. при i=2 та
-- k=4: "asdfghj"⇒ "aghj".
-- getTail _ [] = []
-- getTail 0 _ = [] 
-- getTail n (_:xs) = getTail (n-1) xs
    
-- getHead _ [] = []
-- getHead 0 _ = []
-- getHead n (x:xs) = x:getHead (n-1) xs

getHead _ [] = []
getHead 0 _ = []
getHead n (x:xs) = x:getHead (n-1) xs

slice :: [a]->Char->Int->[a]
slice from to xs = getHead from xs 
-- slice :: Int->Int->[a]->[a]
-- slice from to xs = getHead from xs ++ getTail to xs

-- В ході виконання лабораторної роботи ознаймлено з рекурсивними функціями 
-- мови Haskell, також було створено функцію, яка знаходить останній елемент списку
-- та функцію визначення середини списку з вказаними позиціями